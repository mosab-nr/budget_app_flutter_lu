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
    apiKey: 'AIzaSyACtHCNcVvrAc-BBi27cQBrVmqArvsKaOI',
    appId: '1:688150946619:web:cfe32995cdac50ac208d1e',
    messagingSenderId: '688150946619',
    projectId: 'budget-app-flutter-lu',
    authDomain: 'budget-app-flutter-lu.firebaseapp.com',
    storageBucket: 'budget-app-flutter-lu.firebasestorage.app',
    measurementId: 'G-D6DE0S133W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAa0XfKEQsGHcFFJc48AF4SKrfcxUP9Vdo',
    appId: '1:688150946619:android:45f76d8cfdc7f82a208d1e',
    messagingSenderId: '688150946619',
    projectId: 'budget-app-flutter-lu',
    storageBucket: 'budget-app-flutter-lu.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7NK-3aLZi-e2d8NZMoY5CHhyPe_DKQ2c',
    appId: '1:688150946619:ios:99ad7ca9d0cb1cb4208d1e',
    messagingSenderId: '688150946619',
    projectId: 'budget-app-flutter-lu',
    storageBucket: 'budget-app-flutter-lu.firebasestorage.app',
    iosBundleId: 'com.mosababumoammar.budgetApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7NK-3aLZi-e2d8NZMoY5CHhyPe_DKQ2c',
    appId: '1:688150946619:ios:99ad7ca9d0cb1cb4208d1e',
    messagingSenderId: '688150946619',
    projectId: 'budget-app-flutter-lu',
    storageBucket: 'budget-app-flutter-lu.firebasestorage.app',
    iosBundleId: 'com.mosababumoammar.budgetApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyACtHCNcVvrAc-BBi27cQBrVmqArvsKaOI',
    appId: '1:688150946619:web:eac8b703473897da208d1e',
    messagingSenderId: '688150946619',
    projectId: 'budget-app-flutter-lu',
    authDomain: 'budget-app-flutter-lu.firebaseapp.com',
    storageBucket: 'budget-app-flutter-lu.firebasestorage.app',
    measurementId: 'G-Q0TV7PEH3J',
  );
}
