import 'package:flutter/material.dart';

import 'auth_form.dart';


enum AuthType { login, register }

class AuthScreen extends StatelessWidget {
  final AuthType authType;

  const AuthScreen({ required this.authType});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Text('Hello!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                )),
            AuthForm(
              authType: authType,
            ),
          ],
        ),
      ),
    );
  }
}
