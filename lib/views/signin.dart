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
        key: _formkey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? ("Enter Email id") : null;
                },
                decoration: InputDecoration(hintText: "Email"),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (val) {
                  return val!.isEmpty ? ("Enter Password") : null;
                },
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width - 48,
                child: const Text(
                  "Sign-in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                
              ),
              SizedBox(
                height: 18,
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Don't have an account? ", style: TextStyle(fontSize: 16),),
                  Text("Sign Up", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),),
                ],
              ),
              SizedBox(height: 80),
            ],
            
          ),
        ),
      ),
    );
  }
}
