import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              Hero(
                tag: 'fire',
                child: Icon(
                  Icons.bolt,
                  size: 150,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Textfield('Enter your email'),
              SizedBox(
                height: 8.0,
              ),
              Textfield('Enter your password'),
              SizedBox(
                height: 24.0,
              ),
              Button(Colors.lightBlueAccent, ChatScreen(), 'Log In'),
            ],
          ),
        ),
      ),
    );
  }
}
