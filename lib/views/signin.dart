import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/mywidget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: appBar(context),
        backgroundColor: Colors.black87,
      ),
      body: Form(
        child: Container(
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val){
                  return val!.isEmpty? ("Enter Email id"):null;
                },
                decoration: InputDecoration(hintText: "email"),
                onChanged: (val) {
                  email = val;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
