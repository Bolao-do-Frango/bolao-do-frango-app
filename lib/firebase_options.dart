import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYB-cjSC0SvG4YgG1MYPdeAhpjqlfVzjM',
    appId: '1:669747335913:android:6a0d8eab87bdb617dd1678',
    messagingSenderId: '669747335913',
    projectId: 'bolao-do-frango',
    storageBucket: 'bolao-do-frango.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYfVKKiqo7QoqOxfkZ8Azo2WvM4pAoo6Q',
    appId: '1:669747335913:ios:d2b1c87a37a01f1bdd1678',
    messagingSenderId: '669747335913',
    projectId: 'bolao-do-frango',
    storageBucket: 'bolao-do-frango.appspot.com',
    iosClientId:
        '669747335913-f1gpa8vjigh700na6te7kh2p58mpegqq.apps.googleusercontent.com',
    iosBundleId: 'com.example.bolaoDoFrangoApp',
  );
}
