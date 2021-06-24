import 'package:flutter/material.dart';
import 'package:test1/screens/card.dart';
import 'package:test1/screens/loginpage.dart';
import 'package:test1/screens/otp.dart';
import 'package:test1/screens/settingpage.dart';
import 'package:test1/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => loginpage(),
        '/card': (context) => card(),
        '/setting': (context) => settingpage(),
        '/sign': (context) => account(),
        '/otp': (context) => verfication()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
