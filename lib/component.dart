import 'package:firebase_app/constant.dart';
import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  const ReuseableButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor});

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 5.0,
              backgroundColor: backgroundColor,
              minimumSize: const Size(double.infinity, 60.0)),
          child: Text(
            text,
            style: KButtonTextStyle,
          )),
    );
  }
}

class ReuseableTextWidget extends StatelessWidget {
  const ReuseableTextWidget(
      {super.key, required this.text, required this.textInputType});

  final String text;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: true,
      style: KButtonTextStyle,
      decoration:KTextFielddecoration.copyWith(hintText: text)
    );
  }
}
