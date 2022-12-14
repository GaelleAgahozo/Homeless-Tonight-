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
    apiKey: 'AIzaSyBQ_-k6lwspgYtSkCGn1i_inkNVKJB2haY',
    appId: '1:567006692292:web:4885f146bbadad6f4f1a91',
    messagingSenderId: '567006692292',
    projectId: 'homeless-tonight',
    authDomain: 'homeless-tonight.firebaseapp.com',
    storageBucket: 'homeless-tonight.appspot.com',
    measurementId: 'G-CCHJ8NJHET',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHkX54dGPPaISrDpQJxXn8LrjmAxdELec',
    appId: '1:567006692292:android:3d0343181a94107b4f1a91',
    messagingSenderId: '567006692292',
    projectId: 'homeless-tonight',
    storageBucket: 'homeless-tonight.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEgt2QqsxdDPY7s3cn9yFkzPWJ7P0UYRA',
    appId: '1:567006692292:ios:3db4b6669408f6d34f1a91',
    messagingSenderId: '567006692292',
    projectId: 'homeless-tonight',
    storageBucket: 'homeless-tonight.appspot.com',
    iosClientId: '567006692292-nc9c98ictp8lusl5l89kh905i4g5h92e.apps.googleusercontent.com',
    iosBundleId: 'com.example.homelessTonight',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAEgt2QqsxdDPY7s3cn9yFkzPWJ7P0UYRA',
    appId: '1:567006692292:ios:3db4b6669408f6d34f1a91',
    messagingSenderId: '567006692292',
    projectId: 'homeless-tonight',
    storageBucket: 'homeless-tonight.appspot.com',
    iosClientId: '567006692292-nc9c98ictp8lusl5l89kh905i4g5h92e.apps.googleusercontent.com',
    iosBundleId: 'com.example.homelessTonight',
  );
}
