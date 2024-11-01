// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDKb5vVs_YmWxl-HGy4RObmB-7hds3ZD6s',
    appId: '1:170149740893:web:4c68eb2afc97c12fc028b4',
    messagingSenderId: '170149740893',
    projectId: 'e-commerce-app-fb27d',
    authDomain: 'e-commerce-app-fb27d.firebaseapp.com',
    storageBucket: 'e-commerce-app-fb27d.appspot.com',
    measurementId: 'G-M4T3M56WY1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPRctDVlNMRHI2l-cO0NzWJOO3sEcKK0E',
    appId: '1:170149740893:android:3f3a311aef901a39c028b4',
    messagingSenderId: '170149740893',
    projectId: 'e-commerce-app-fb27d',
    storageBucket: 'e-commerce-app-fb27d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-W9amJLDCA3xQIY7QxUNJ3Cm1pPcka7Y',
    appId: '1:170149740893:ios:65cadad2c13d35a1c028b4',
    messagingSenderId: '170149740893',
    projectId: 'e-commerce-app-fb27d',
    storageBucket: 'e-commerce-app-fb27d.appspot.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKb5vVs_YmWxl-HGy4RObmB-7hds3ZD6s',
    appId: '1:170149740893:web:78d2f87c7df054e4c028b4',
    messagingSenderId: '170149740893',
    projectId: 'e-commerce-app-fb27d',
    authDomain: 'e-commerce-app-fb27d.firebaseapp.com',
    storageBucket: 'e-commerce-app-fb27d.appspot.com',
    measurementId: 'G-PV8P8JXGHZ',
  );
}
