import 'package:flutter/material.dart';
import 'package:quiz_app/views/dashboard.dart';
import 'package:quiz_app/views/signin.dart';
import 'package:quiz_app/views/signup.dart';
import 'package:quiz_app/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/dashboard': (context) => MyDashboard(),
        '/login': (context) => SignIn(),
      },
    );
  }
}
