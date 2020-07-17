import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guiae/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

String name;
String email;
String imageUrl;
String avatar;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLogged = false;
  final facebookLogin = FacebookLogin();
  final GoogleSignIn googleSignIn = GoogleSignIn();

  // create user obj based on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  // Login with Facebook
  Future<FirebaseUser> loginWithFacebook() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final result = await facebookLogin.logIn(['email']);

    if (result.status != FacebookLoginStatus.loggedIn) {
      return null;
    }

    final AuthCredential credential = FacebookAuthProvider.getCredential(
      accessToken: result.accessToken.token,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoUrl != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoUrl;

    prefs.setString('name', name);
    prefs.setString('email', email);
    prefs.setString('imageUrl', imageUrl);

    if (name.contains(" ")) {
      name = name.substring(0, name.indexOf(" "));
    }

    return user;
  }

// Login with Google
  Future<String> signInWithGoogle() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    // Checking if email and name is null
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoUrl != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoUrl;

    prefs.setString('name', name);
    prefs.setString('email', email);
    prefs.setString('imageUrl', imageUrl);

    // Only taking the first part of the name, i.e., First Name
    if (name.contains(" ")) {
      name = name.substring(0, name.indexOf(" "));
    }

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    return 'signInWithGoogle succeeded: $user';
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(
    String _email,
    String _password,
  ) async {
    //Busca la instancia de usuario en flutter y asigna el nombre
    Firestore.instance
        .collection('usuarios')
        .where("correo", isEqualTo: _email)
        .snapshots()
        .listen(
            (data) => data.documents.forEach((doc) => name = (doc["nombre"])));

    Firestore.instance
        .collection('usuarios')
        .where("correo", isEqualTo: _email)
        .snapshots()
        .listen((data) =>
            data.documents.forEach((doc) => avatar = (doc["avatar"])));

    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      FirebaseUser user = result.user;

      email = _email;
      imageUrl = avatar;

      prefs.setString('name', name);
      prefs.setString('email', email);
      prefs.setString('imageAsset', imageUrl);

      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(
      String _email, String password, String _nombre, String _avatar) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: _email,
        password: password,
      );
      FirebaseUser user = result.user;

      name = '';
      email = _email;
      imageUrl = _avatar;

      Firestore.instance
          .collection('usuarios')
          .document()
          .setData({'correo': _email, 'nombre': _nombre, 'avatar': _avatar});

      prefs.setString('email', email);
      prefs.setString('imageAsset', imageUrl);
      prefs.setString('name', _nombre);

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //Limpio variables de sharedPreferences
    prefs.setString('imageUrl', '');
    prefs.setString('email', '');
    prefs.setString('imageAsset', '');
    prefs.setString('name', '');

    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out Facebook
  Future<void> signOutFacebook() async {
    facebookLogin.logOut();

    print('user facebook logout');
  }

  void signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Sign Out");
  }
}
