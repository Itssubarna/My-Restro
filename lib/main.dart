import 'dart:io';

import 'package:bmi/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Platform.isAndroid ? await Firebase.initializeApp(
  //   options: const FirebaseOptions(apiKey: 'AIzaSyDThe05lLYXuaCr744Ffs9gdjQjhGMrgLo', appId: '1:946707645064:android:b912ba3b7df4985e95153d', messagingSenderId: '946707645064', projectId: 'mero-app-93817')
  // ):
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Login(),
     theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
