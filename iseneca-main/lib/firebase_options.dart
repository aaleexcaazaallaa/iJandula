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
    apiKey: 'AIzaSyCccdAmRc3DC9lNEylvnqyUY3abIlp4TjE',
    appId: '1:286196859062:web:e6a009bfeffc4af862a617',
    messagingSenderId: '286196859062',
    projectId: 'ijandula-17ffd',
    authDomain: 'ijandula-17ffd.firebaseapp.com',
    storageBucket: 'ijandula-17ffd.appspot.com',
    measurementId: 'G-DBBY34G42V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_N2s3r0oAe6ozfqljwFj4K9yLe8vO4_c',
    appId: '1:286196859062:android:ffde213b3a74b7d462a617',
    messagingSenderId: '286196859062',
    projectId: 'ijandula-17ffd',
    storageBucket: 'ijandula-17ffd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpR7ME0BX6-ra3UnNaGsviplnUUeOtbwI',
    appId: '1:286196859062:ios:9ec1b4054ed26c8e62a617',
    messagingSenderId: '286196859062',
    projectId: 'ijandula-17ffd',
    storageBucket: 'ijandula-17ffd.appspot.com',
    androidClientId: '286196859062-qsoadc7a6gboc9d5upvpplqe6j8o4o8q.apps.googleusercontent.com',
    iosClientId: '286196859062-qtaj2gdsdhk28aqsrmsg4pughi9kde42.apps.googleusercontent.com',
    iosBundleId: 'com.example.iseneca',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpR7ME0BX6-ra3UnNaGsviplnUUeOtbwI',
    appId: '1:286196859062:ios:3773aefe8fa1283962a617',
    messagingSenderId: '286196859062',
    projectId: 'ijandula-17ffd',
    storageBucket: 'ijandula-17ffd.appspot.com',
    androidClientId: '286196859062-qsoadc7a6gboc9d5upvpplqe6j8o4o8q.apps.googleusercontent.com',
    iosClientId: '286196859062-q2dt1svb6muaon99vtgkf7imo4ljh5b3.apps.googleusercontent.com',
    iosBundleId: 'com.example.iseneca.RunnerTests',
  );
}
