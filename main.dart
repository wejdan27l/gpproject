import 'package:flutter/material.dart';
import 'package:gpproject/auth.dart';
import 'package:gpproject/doctor/homeD.dart';
import 'package:gpproject/doctor/signupD.dart';
import 'package:gpproject/doctor/tabsD.dart';
import 'package:gpproject/screens/aboutUs.dart';
import 'package:gpproject/screens/chat.dart';
import 'package:gpproject/screens/confirmrequest.dart';
import 'package:gpproject/screens/homescreen.dart';
import 'package:gpproject/screens/homevisit.dart';
import 'package:gpproject/screens/login.dart';
import 'package:gpproject/doctor/loginD.dart';
import 'package:gpproject/screens/map.dart';
import 'package:gpproject/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gpproject/screens/appointment.dart';
import 'package:gpproject/tabs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
      routes: {
        //doctor
        'logindoctor': (context) => logind(),
        'signupDoctor': (context) => signupD(),
        'signindoctor': (context) => logind(),
        'homedoctor': (context) => tabsD(),

        'signupScreen': (context) => signup(),
        'signinScreen': (context) => login(),
        'tabsScreen': (context) => tabs(),
        'Appointmentscreen': (context) => appointment(),
        'aboutUs': (context) => aboutus(),
        'homevisit': (context) => homevisit(),
        'chat': (context) => chat(),
        'map': (context) => map(),
        'confermhomevist': (context) => confirmrequest()
      },
    ));
  }
}
