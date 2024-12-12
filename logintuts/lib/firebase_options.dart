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
    apiKey: 'AIzaSyDLxJasVERnfCFsnkZ6QJEq6l1QUXuq6ck',
    appId: '1:525842744943:web:42d9c5815ec3409bd0ef9a',
    messagingSenderId: '525842744943',
    projectId: 'authtutorial-5642d',
    authDomain: 'authtutorial-5642d.firebaseapp.com',
    storageBucket: 'authtutorial-5642d.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvj2bWBIlroE8TuHXASPs07IN_QemwcpQ',
    appId: '1:525842744943:android:d0baa75b0090f4e6d0ef9a',
    messagingSenderId: '525842744943',
    projectId: 'authtutorial-5642d',
    storageBucket: 'authtutorial-5642d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkwkRcx8USYci822DEUjKYg62UC8v27Lg',
    appId: '1:525842744943:ios:3119b8752cea0ae3d0ef9a',
    messagingSenderId: '525842744943',
    projectId: 'authtutorial-5642d',
    storageBucket: 'authtutorial-5642d.firebasestorage.app',
    iosBundleId: 'com.example.logintuts',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkwkRcx8USYci822DEUjKYg62UC8v27Lg',
    appId: '1:525842744943:ios:3119b8752cea0ae3d0ef9a',
    messagingSenderId: '525842744943',
    projectId: 'authtutorial-5642d',
    storageBucket: 'authtutorial-5642d.firebasestorage.app',
    iosBundleId: 'com.example.logintuts',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDLxJasVERnfCFsnkZ6QJEq6l1QUXuq6ck',
    appId: '1:525842744943:web:c03d69f1d3224d35d0ef9a',
    messagingSenderId: '525842744943',
    projectId: 'authtutorial-5642d',
    authDomain: 'authtutorial-5642d.firebaseapp.com',
    storageBucket: 'authtutorial-5642d.firebasestorage.app',
  );

}