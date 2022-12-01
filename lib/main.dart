import 'package:flutter/material.dart';
import 'package:social_media_ui/screens/home_screen.dart';
import 'package:social_media_ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
