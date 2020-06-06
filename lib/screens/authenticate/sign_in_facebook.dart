import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
bool isLogged = false;
final facebookLogin = FacebookLogin();
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
  
  return user;



}

Future<void> signOutFacebook() async {
     
     print('user facebook logout');
    
  }




