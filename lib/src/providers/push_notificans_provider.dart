import 'package:firebase_messaging/firebase_messaging.dart';


class PushNotificationProvider {

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

initNotifications(){
  _firebaseMessaging.requestNotificationPermissions();

  _firebaseMessaging.getToken().then( (token) {

      print('---FCM TOKEN---');
      print( token ); 
      


      //ekX0rpDPxJ0:APA91bE6RiYuYQbjZRCJ_-n0Y5gVPmsVYPkqWsZU1clNkLNiAHebmTy3ruMgoEeHItwkkEC5pIKyFmJAZyOnLtWitMIJDLyP2cbGEtrCKM2tVezfP17nmw0fhGBCIk4peZPrlBBumcwu
  });
}
}