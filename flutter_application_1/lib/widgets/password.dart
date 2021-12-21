import 'package:flutter/material.dart';

class PassWordObscure extends StatelessWidget {
  const PassWordObscure({ required this.obscure,Key? key }) : super(key: key);

  final bool obscure;
  @override
  Widget build(BuildContext context) {
    if(obscure){
      return const Icon(Icons.visibility_off_outlined);
    }else{
      return const Icon(Icons.remove_red_eye_outlined);
    }
  }
}