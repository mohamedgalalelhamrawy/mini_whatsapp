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
    apiKey: 'AIzaSyCAcmaxE1A-nXbGSvNBnBUBCSkt4zREE_Q',
    appId: '1:123553095525:web:5581a2e5775416150d0b8c',
    messagingSenderId: '123553095525',
    projectId: 'miniwhatsapp-9536e',
    authDomain: 'miniwhatsapp-9536e.firebaseapp.com',
    storageBucket: 'miniwhatsapp-9536e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByORIfjFwfZOQ4N1D5ts7x5TDmfLQ11Pk',
    appId: '1:123553095525:android:9b8da67655e438630d0b8c',
    messagingSenderId: '123553095525',
    projectId: 'miniwhatsapp-9536e',
    storageBucket: 'miniwhatsapp-9536e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA51-MPsawXB2KezHOdhvBoBl5r6JXaACo',
    appId: '1:123553095525:ios:9bdde69930947d490d0b8c',
    messagingSenderId: '123553095525',
    projectId: 'miniwhatsapp-9536e',
    storageBucket: 'miniwhatsapp-9536e.appspot.com',
    iosBundleId: 'com.example.miniWhatsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA51-MPsawXB2KezHOdhvBoBl5r6JXaACo',
    appId: '1:123553095525:ios:9bdde69930947d490d0b8c',
    messagingSenderId: '123553095525',
    projectId: 'miniwhatsapp-9536e',
    storageBucket: 'miniwhatsapp-9536e.appspot.com',
    iosBundleId: 'com.example.miniWhatsapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCAcmaxE1A-nXbGSvNBnBUBCSkt4zREE_Q',
    appId: '1:123553095525:web:edb48539ba08fc160d0b8c',
    messagingSenderId: '123553095525',
    projectId: 'miniwhatsapp-9536e',
    authDomain: 'miniwhatsapp-9536e.firebaseapp.com',
    storageBucket: 'miniwhatsapp-9536e.appspot.com',
  );
}
