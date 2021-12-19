import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("Hello world"),
            ],
          ),
        ),
      ),
    );
  }
}
