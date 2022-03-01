// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDO9FOhXzYndsm0cWEOZeIsLYdFsaa5RAQ',
    appId: '1:54095514810:web:6f3a5d960c498bfb120683',
    messagingSenderId: '54095514810',
    projectId: 'fluttercoder-15a98',
    authDomain: 'fluttercoder-15a98.firebaseapp.com',
    databaseURL: 'https://fluttercoder-15a98-default-rtdb.firebaseio.com',
    storageBucket: 'fluttercoder-15a98.appspot.com',
    measurementId: 'G-MHZDN4HYPC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRmA7IrKxREizPrvVKFpSx6BIbcRgv_Fo',
    appId: '1:54095514810:android:27c5d0f6934b1ecf120683',
    messagingSenderId: '54095514810',
    projectId: 'fluttercoder-15a98',
    databaseURL: 'https://fluttercoder-15a98-default-rtdb.firebaseio.com',
    storageBucket: 'fluttercoder-15a98.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbkoVx1e9NV9v9Af2Gf9sc95RIn1rEmpY',
    appId: '1:54095514810:ios:1bc7ec8c78b5eb6d120683',
    messagingSenderId: '54095514810',
    projectId: 'fluttercoder-15a98',
    databaseURL: 'https://fluttercoder-15a98-default-rtdb.firebaseio.com',
    storageBucket: 'fluttercoder-15a98.appspot.com',
    iosClientId: '54095514810-0q2t02hut28ebdgoalbsc2fqret46i44.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbkoVx1e9NV9v9Af2Gf9sc95RIn1rEmpY',
    appId: '1:54095514810:ios:1bc7ec8c78b5eb6d120683',
    messagingSenderId: '54095514810',
    projectId: 'fluttercoder-15a98',
    databaseURL: 'https://fluttercoder-15a98-default-rtdb.firebaseio.com',
    storageBucket: 'fluttercoder-15a98.appspot.com',
    iosClientId: '54095514810-0q2t02hut28ebdgoalbsc2fqret46i44.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatFlutter',
  );
}
