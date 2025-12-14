import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_with_firebase/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "*****",
      appId: "*****",
      messagingSenderId: "*****",
      projectId: "login-with-firebase-*****",
    ),
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
