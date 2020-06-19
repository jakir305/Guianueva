import 'package:guiae/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
  
  String name;
  String email;
  String imageUrl;  

class AuthService {
  String name;
  String email;
  String imageUrl; 

  

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
    return _auth.onAuthStateChanged
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
  }


  // Login with Facebook
 Future<FirebaseUser> loginWithFacebook() async{


final result = await facebookLogin.logIn(['email']);

if (result.status != FacebookLoginStatus.loggedIn){
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

   if (name.contains(" ")) {
    name = name.substring(0, name.indexOf(" "));
  }


  
  return user;



}

// Login with Google
  Future<String> signInWithGoogle() async {
  
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
  Future signInWithEmailAndPassword(String _email, String _password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      FirebaseUser user = result.user;
      name = '';
      email = _email;
      imageUrl = 'https://www.learning.uclg.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-';
      

      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  // register with email and password
  Future registerWithEmailAndPassword(String _email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: _email, password: password);
      FirebaseUser user = result.user;
      name = '';
      email = _email;
      imageUrl = 'https://www.learning.uclg.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-';

      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  // sign out
  Future signOut() async {
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