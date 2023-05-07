import 'package:flutter/material.dart';

import 'auth_screen.dart';
import 'buttons/original_button.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({ required this.authType});

  @override
  State<AuthForm> createState() => AuthFormState();
}

class AuthFormState extends State<AuthForm> {
  @override
  bool isMember = true;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: <Widget>[
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'username'),
              ),
              SizedBox(height: 12),

              //! ###########################
              isMember
                  ? Container()
                  : TextFormField(
                      key: GlobalKey(debugLabel: 'numb'),
                      decoration: InputDecoration(labelText: 'Phone Number'),
                    ),
              if (!isMember) SizedBox(height: 12),
              //! ######################################
              TextFormField(
                key: GlobalKey(debugLabel: 'Pass'),
                decoration: InputDecoration(labelText: 'password'),
                obscureText: true,
              ),
              SizedBox(height: 12),

              //! ######################################
              if (!isMember)
                TextFormField(
                  key: GlobalKey(debugLabel: 'ConfPass'),
                  decoration: InputDecoration(labelText: 'Conferm Password'),
                  obscureText: true,
                ),
              if (!isMember) SizedBox(height: 50),
              //! ######################################
              originalButton(
                  text: isMember ? 'log in' : 'Register',
                  onPressed: () {},
                  textColor: Colors.white,
                  bgColor: Colors.black),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isMember = !isMember;
                    });

                    // if (widget.authType == AuthType.login) {
                    //   Navigator.of(context).pushReplacementNamed('register');
                    // } else {
                    //   Navigator.of(context).pushReplacementNamed('login');
                    // }
                  },
                  child: Text(
                    widget.authType == AuthType.login
                        ? 'do not have account'
                        : 'you have account',
                  )),
            ]),
          ),
        )
      ],
    );
  }
}
