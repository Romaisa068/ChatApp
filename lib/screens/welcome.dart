import 'package:firebase_app/component.dart';
import 'package:firebase_app/constant.dart';
import 'package:firebase_app/screens/login_screen.dart';
import 'package:firebase_app/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      //upperBound: 100.0
    );

    //animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.white, end: Colors.black87)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      // ignore: avoid_print
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 60.0,
                    child: const Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Flash Chat',
                      colors: KColorize,
                      textStyle: const TextStyle(color: Colors.white, fontSize: 50.0),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            ReuseableButton(text: 'Login',backgroundColor: Colors.lightBlue ,onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            }),
           ReuseableButton(text: 'Registration', onPressed: (){
             Navigator.pushNamed(context,Registeration.id);
           }, backgroundColor: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}


