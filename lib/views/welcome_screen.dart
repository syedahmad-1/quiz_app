import 'package:flutter/material.dart';
import 'package:quiz_app/views/dashboard.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Welcome to the QuizHub App",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dashboard");
                  },
                  child: Text("Let's Get Started"))
            ],
          ),
        ),
      ),
    );
  }
}
