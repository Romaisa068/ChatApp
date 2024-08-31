import 'package:firebase_app/component.dart';
import 'package:flutter/material.dart';

class Registeration extends StatefulWidget {
  const Registeration({super.key});

  static const String id = 'registration_screen';
  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
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
                  height: 200.0, child: Image.asset('images/logo.png')),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ReuseableTextWidget(
                text: 'Enter Your Email',
                controller: _email,
                textInputType: TextInputType.emailAddress),
            const SizedBox(
              height: 8.0,
            ),
            ReuseableTextWidget(
                controller: _password,
                text: 'Enter Password',
                textInputType: TextInputType.visiblePassword),
            const SizedBox(
              height: 25.0,
            ),
            ReuseableButton(
                text: 'Sign Up',
                onPressed: () {},
                backgroundColor: Colors.lightBlue)
          ],
        ),
      ),
    );
  }
}
