import 'package:astute_website/pages/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDLOLzOvC8c7PzyYBkX6SzzdcSJ_kb75tk",
    appId: "1:754777396783:web:ac0bd13f64d44d3d7158da",
    messagingSenderId: "754777396783",
    projectId: "astuteblog-9ea87",
  )); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contentful Flutter Demo',
      home: Scaffold(body: HomePage()),
    );
  }
}
