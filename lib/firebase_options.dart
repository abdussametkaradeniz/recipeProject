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
    apiKey: 'AIzaSyDQw6k_XKn1r3pYBrq9-dQqa9s4dxsfZ6o',
    appId: '1:202079390031:web:9b2d4488e5c8ea83591d3a',
    messagingSenderId: '202079390031',
    projectId: 'recipeapp-12023',
    authDomain: 'recipeapp-12023.firebaseapp.com',
    storageBucket: 'recipeapp-12023.appspot.com',
    measurementId: 'G-ZSQ196R42S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3rsC4PO4zuWxxTVqHgwsCrlKqO9_8UMQ',
    appId: '1:202079390031:android:134b9befc64bbc66591d3a',
    messagingSenderId: '202079390031',
    projectId: 'recipeapp-12023',
    storageBucket: 'recipeapp-12023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXeBVVqMLCth4sV9REiXV4m3o8mRTI5Rg',
    appId: '1:202079390031:ios:9ecf9e5d14b894ba591d3a',
    messagingSenderId: '202079390031',
    projectId: 'recipeapp-12023',
    storageBucket: 'recipeapp-12023.appspot.com',
    iosClientId: '202079390031-6cr3h3i1dl4ehgaid1cq2h58ogoknd1l.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipeapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXeBVVqMLCth4sV9REiXV4m3o8mRTI5Rg',
    appId: '1:202079390031:ios:9ecf9e5d14b894ba591d3a',
    messagingSenderId: '202079390031',
    projectId: 'recipeapp-12023',
    storageBucket: 'recipeapp-12023.appspot.com',
    iosClientId: '202079390031-6cr3h3i1dl4ehgaid1cq2h58ogoknd1l.apps.googleusercontent.com',
    iosBundleId: 'com.example.recipeapp',
  );
}
