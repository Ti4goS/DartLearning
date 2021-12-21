import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bem Vindo ao Aplicativo'),
            ElevatedButton(
              onPressed: () {print('teste');}, 
              child: const Text('Botão'),
              style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40)),
            ),
            ],
        ),
      ),
    );
  }
}
