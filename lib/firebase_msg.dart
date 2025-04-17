import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMsg {
  final msgservice=FirebaseMessaging.instance;
  initFCM() async{
    await msgservice.requestPermission();
    var token=await msgservice.getToken();
    print("FCM token:$token");
    // FirebaseMessaging.onBackgroundMessage(handleNotification);
    // FirebaseMessaging.onMessage.listen(handleNotification);
  }
}

// Future<void> handleNotification(RemoteMessage msg) async{

// }