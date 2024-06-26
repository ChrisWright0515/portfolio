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
    apiKey: 'AIzaSyAYFvGhppETQxEHoFXIIkAGyafi8qOTZnc',
    appId: '1:1037497120371:web:f9264aa2e08111d4f69c06',
    messagingSenderId: '1037497120371',
    projectId: 'chris-wright-portfolio',
    authDomain: 'chris-wright-portfolio.firebaseapp.com',
    storageBucket: 'chris-wright-portfolio.appspot.com',
    measurementId: 'G-FR9SLBBW6H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKOnGSani6Z5QIUIhJTivEsfNjljMzExo',
    appId: '1:1037497120371:android:652f57665c2fc336f69c06',
    messagingSenderId: '1037497120371',
    projectId: 'chris-wright-portfolio',
    storageBucket: 'chris-wright-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCK60mcrIzbapYtEzAsWhXCnMSE8uoqXNM',
    appId: '1:1037497120371:ios:e4a2a098a06ed71af69c06',
    messagingSenderId: '1037497120371',
    projectId: 'chris-wright-portfolio',
    storageBucket: 'chris-wright-portfolio.appspot.com',
    iosBundleId: 'com.example.chrisWrightPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCK60mcrIzbapYtEzAsWhXCnMSE8uoqXNM',
    appId: '1:1037497120371:ios:e4a2a098a06ed71af69c06',
    messagingSenderId: '1037497120371',
    projectId: 'chris-wright-portfolio',
    storageBucket: 'chris-wright-portfolio.appspot.com',
    iosBundleId: 'com.example.chrisWrightPortfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAYFvGhppETQxEHoFXIIkAGyafi8qOTZnc',
    appId: '1:1037497120371:web:92327a7d8e4e349ef69c06',
    messagingSenderId: '1037497120371',
    projectId: 'chris-wright-portfolio',
    authDomain: 'chris-wright-portfolio.firebaseapp.com',
    storageBucket: 'chris-wright-portfolio.appspot.com',
    measurementId: 'G-M2N94N65LD',
  );

}