import 'package:flutter/material.dart';
import 'package:naschat/screens/welcome_screen.dart';
import 'package:naschat/screens/login_screen.dart';
import 'package:naschat/screens/registration_screen.dart';
import 'package:naschat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen' : (context) => WelcomeScreen(),
        'login_screen' : (context) => LoginScreen(),
        'registeration_screen' : (context) => RegistrationScreen(),
        'chat_screen' : (context) => ChatScreen(),
      },
    );
  }
}
