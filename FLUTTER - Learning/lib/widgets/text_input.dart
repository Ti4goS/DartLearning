import 'package:flutter/material.dart';

import 'consts.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required  this.icon,
    required  this.hint,
    this.inputType,
    this.inputAction,
    required this.obscure
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: bodyText,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon,
                  color: Colors.white, size: 30),
            ),
          ),
          style: bodyText,
          obscureText: obscure,
          keyboardType: inputType,
          textInputAction: inputAction,
        )
    );
  }
}