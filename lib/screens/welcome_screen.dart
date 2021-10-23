import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, upperBound: 100, duration: Duration(milliseconds: 500));
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()),
            );
          });
        },
        child: Text(
          '${controller.value.toInt()}%',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'fire',
                  child: Icon(
                    Icons.bolt_outlined,
                    color: Colors.yellow,
                    size: controller.value * 0.6,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
