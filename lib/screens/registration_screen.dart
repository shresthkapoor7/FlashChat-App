import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
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
                  color: Colors.yellow,
                  size: 150,
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
              Button(Colors.blueAccent, LoginScreen(), 'Register'),
            ],
          ),
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  final String text;
  Textfield(this.text);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
        hintText: text,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
