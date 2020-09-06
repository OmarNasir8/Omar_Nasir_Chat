import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:naschat/widget_classes/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  ),
                ),
                TypewriterAnimatedTextKit(
                  repeatForever: true,
                  speed: Duration(milliseconds: 770),
                  text: ['Easy Chat', 'Omar Nasir'],
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(title: 'Log in', color: Color(0xffFA8072), onPressed: () {
              Navigator.pushNamed(context, 'login_screen');
            },),
            RoundedButton(title: 'Register', color: Colors.red, onPressed: () {
              Navigator.pushNamed(context, 'registeration_screen');
            },),
          ],
        ),
      ),
    );
  }
}

//Color(0xffFA8072) USE THIS COLOR
