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
        return macos;
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
    apiKey: 'AIzaSyC9p7DKzzib36hXzWefFPS-4z4DzJe9SMw',
    appId: '1:709876168089:web:c7f7118b7b18f139574f08',
    messagingSenderId: '709876168089',
    projectId: 'tstorev3',
    authDomain: 'tstorev3.firebaseapp.com',
    storageBucket: 'tstorev3.appspot.com',
    measurementId: 'G-Q7BF6BS84M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0zKXvsskqCy1IGn3E4LOyw_cIsymZrvo',
    appId: '1:709876168089:android:bb59213da4fc45ce574f08',
    messagingSenderId: '709876168089',
    projectId: 'tstorev3',
    storageBucket: 'tstorev3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPQ0yIVqCEf37VaXFsBtQR-YX9Igot3g0',
    appId: '1:709876168089:ios:1025d3f4b39a0b6d574f08',
    messagingSenderId: '709876168089',
    projectId: 'tstorev3',
    storageBucket: 'tstorev3.appspot.com',
    iosBundleId: 'com.example.tstore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPQ0yIVqCEf37VaXFsBtQR-YX9Igot3g0',
    appId: '1:709876168089:ios:1025d3f4b39a0b6d574f08',
    messagingSenderId: '709876168089',
    projectId: 'tstorev3',
    storageBucket: 'tstorev3.appspot.com',
    iosBundleId: 'com.example.tstore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9p7DKzzib36hXzWefFPS-4z4DzJe9SMw',
    appId: '1:709876168089:web:d3970dc0223044fa574f08',
    messagingSenderId: '709876168089',
    projectId: 'tstorev3',
    authDomain: 'tstorev3.firebaseapp.com',
    storageBucket: 'tstorev3.appspot.com',
    measurementId: 'G-E01RCMZMT6',
  );
}
