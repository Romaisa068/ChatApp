// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const KButtonTextStyle =  TextStyle(color: Colors.white,fontSize: 20.0);

const KColorize = [
  Colors.white,
  Colors.purple,
  Colors.yellow,
  Colors.red
];

const KTextFielddecoration =  InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        hintStyle: TextStyle(color: Colors.white30),
        contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
      );

