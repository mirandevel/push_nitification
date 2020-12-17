import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationProvider {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print(' TOKEN ');
      print(token);
    });

    _firebaseMessaging.configure(onMessage: (info) {
      print('Message');
      print(info);
    }, onLaunch: (info) {
      print('Launch');
      print(info);
    }, onResume: (info) {
      print('Resume');
      print(info);
    });
  }
}
//csOs2u9gTnG_lf0NURp92V:APA91bHgmjUqZc6SvhNoDrZID4qiZ5Hqhu01HM7RUFlYxpGYE8VTajRK-2Fdq5FZ_xYNASWDEE-GQJGjKdW0IZE5PCXzXhLjLA1GC7kaczVUOeCarhsomAIIjFKsOnS8VOqCu7XHzvBX
