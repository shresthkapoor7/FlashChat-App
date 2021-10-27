import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = ColorTween(begin: Colors.black87, end: Colors.blueGrey.shade900)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'fire',
                  child: Icon(
                    Icons.bolt_outlined,
                    color: Colors.yellow,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 260.0,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                    ),
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      //pause: Duration(milliseconds: 500),
                      animatedTexts: [
                        TypewriterAnimatedText('Flash Chat',
                            speed: Duration(milliseconds: 100)),
                        TypewriterAnimatedText('Lightning Fast',
                            speed: Duration(milliseconds: 100)),
                        TypewriterAnimatedText('Flash Chat',
                            speed: Duration(milliseconds: 100)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                image: NetworkImage(
                    'https://static.wikia.nocookie.net/bigbangtheory/images/b/b2/Flash18.png/revision/latest?cb=20161006164043'),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Button(Colors.lightBlueAccent, LoginScreen(), 'Login'),
            Button(Colors.blueAccent, RegistrationScreen(), 'Register'),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color c;
  final Widget p;
  Button(this.c, this.p, this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        elevation: 5.0,
        color: c,
        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => p),
            );
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
