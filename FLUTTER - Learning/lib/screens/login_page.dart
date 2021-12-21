// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_start/main.dart';
import 'package:flutter_start/screens/main_page.dart';
import 'package:flutter_start/widgets/consts.dart';
import 'package:flutter_start/widgets/password_input.dart';
import 'package:flutter_start/widgets/text_input.dart';

import '../widgets/app_theme.dart';
import '../widgets/login_background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            textTheme:
                GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
            primarySwatch: Colors.red,
            brightness: AppTheme.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light),
        home: MyLoginPage());
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      'FirstApp',
                      style: header,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextInput(
                            hint: 'Email',
                            icon: Icons.alternate_email_rounded,
                            obscure: false,
                            inputType: TextInputType.emailAddress,
                            inputAction: TextInputAction.next,
                          )),
                      PasswordInput(
                        icon: Icons.visibility_off_outlined,
                        hint: 'Password',
                        obscure: true,
                        inputAction: TextInputAction.done,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Esqueceu a senha?',
                          style: bodyText,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyApp()));
                          },
                          child: Text(
                            'Login',
                            style: bodyText,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              textStyle: MaterialStateProperty.all(bodyText),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
