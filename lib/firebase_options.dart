// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBIrM2H-Lv7975YcQqh-kwZs6YrBhZyr3M',
    appId: '1:201340134121:web:fbeef8dcddbb63acf08678',
    messagingSenderId: '201340134121',
    projectId: 'pixana-reloaded',
    authDomain: 'pixana-reloaded.firebaseapp.com',
    storageBucket: 'pixana-reloaded.appspot.com',
    measurementId: 'G-M4VQCZMCMH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQz1XcA9JGK7bpR-HKw4yOelelh2LeqaQ',
    appId: '1:201340134121:android:d55fcabd3ed4fe8ff08678',
    messagingSenderId: '201340134121',
    projectId: 'pixana-reloaded',
    storageBucket: 'pixana-reloaded.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbPY0_SB41NTY3HPrdJmKTSktke5PZRes',
    appId: '1:201340134121:ios:e7b60ddb3f7ec619f08678',
    messagingSenderId: '201340134121',
    projectId: 'pixana-reloaded',
    storageBucket: 'pixana-reloaded.appspot.com',
    iosBundleId: 'com.example.pixanaReloaded',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbPY0_SB41NTY3HPrdJmKTSktke5PZRes',
    appId: '1:201340134121:ios:abea5156e27c7f5af08678',
    messagingSenderId: '201340134121',
    projectId: 'pixana-reloaded',
    storageBucket: 'pixana-reloaded.appspot.com',
    iosBundleId: 'com.example.pixanaReloaded.RunnerTests',
  );
}
