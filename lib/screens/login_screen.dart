import 'dart:developer';

import 'package:firebase_app/component.dart';
import 'package:firebase_app/firebase/auth_service.dart';
import 'package:firebase_app/screens/caht_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late final _auth = Auth();

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 200.0,
                child: const Image(
                  image: AssetImage('images/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ReuseableTextWidget(
              controller: _email,
              text: 'Enter your Email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 8.0,
            ),
            ReuseableTextWidget(
                controller: _password,
                text: 'Enter Password',
                obscuretext: true,
                textInputType: TextInputType.visiblePassword),
            const SizedBox(
              height: 25.0,
            ),
            ReuseableButton(
                text: 'Log in',
                onPressed: ()async {
                  final data = await _auth.loginUser(_email.text, _password.text);
                  if(data != null){
                    log('User loged In Successfully ');
                  }
                  // ignore: use_build_context_synchronously
                  await Navigator.pushNamed(context, ChatScreen.id);
                },
                backgroundColor: Colors.lightBlue)
          ],
        ),
      ),
    );
  }
}
