import 'package:flutter/material.dart';
import '../Widgets/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => const LoginPage()},
      initialRoute: "/",
      theme: ThemeData(
        primaryColorLight: Colors.redAccent[100],
        primaryColorDark: Colors.redAccent[100],
      ),
      title: 'Tinder Login',
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 300),
              const Image(
                image: NetworkImage(
                    'https://www.iconsdb.com/icons/preview/white/tinder-xxl.png'),
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 30),
              Text(
                'Location Changer',
                style: header,
              ),
              const SizedBox(height: 10),
              Text(
                'Plugin app for Tinder',
                style: subtitle,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login with FaceBook',
                  style: TextStyle(color: Colors.redAccent, fontSize: 16),
                ),
                style: loginButtonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
