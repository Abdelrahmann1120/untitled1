import 'package:flutter/material.dart';
import 'package:untitled1/places.dart';
import 'package:untitled1/places1.dart';
import 'package:untitled1/places3.dart';
import 'package:untitled1/notifications.dart';
import 'package:untitled1/trip_screen.dart';
import 'package:untitled1/auth_form.dart';

import 'auth_screen.dart';
import 'intro_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Amun' ,
      home: AuthScreen(authType: AuthType.login,),
      routes: {
        'places3': (context) => Places3(),
        'notifications':(context) => Notifications(),
      },

    );
  }
}

