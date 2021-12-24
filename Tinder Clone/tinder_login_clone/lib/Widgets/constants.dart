import 'package:flutter/material.dart';

TextStyle header = const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 26,
  color: Colors.white,
);
//Text title style

TextStyle subtitle = const TextStyle(
    color: Colors.white70, 
    fontSize: 16,
    fontWeight: FontWeight.normal
);
//Text subtitle style

ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white24,
  primary: Colors.white,
  minimumSize: const Size(250,50),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100))
  ),
);