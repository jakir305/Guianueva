import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifications {

   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();



  Future showNotificationWithDefaultSound() async {
  var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
      'your channel id', 'your channel name', 'your channel description',
      importance: Importance.Max, priority: Priority.High);
  var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
  var platformChannelSpecifics = new NotificationDetails(
      androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    'New Post',
    'How to Show Notification in Flutter',
    platformChannelSpecifics,
    payload: 'Default_Sound',
  );
}
}