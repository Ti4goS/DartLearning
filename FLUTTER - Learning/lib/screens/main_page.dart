// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/widgets/app_theme.dart';
import 'package:flutter_start/screens/login_page.dart';


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppTheme.instance,
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter',
              theme: ThemeData(
                  primarySwatch: Colors.red,
                  brightness: AppTheme.instance.isDartTheme
                      ? Brightness.dark
                      : Brightness.light
              ),
              home: MyHomePage(title: 'Flutter Home Page')
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => LoginPage()));
                },
                child: Icon(
                    Icons.account_circle
                ),
              ),
            )
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Você apertou no botão essa quantidade de vezes!'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline2,
              ),
              SwitchTheme()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter, child: Icon(Icons.add)
        )
    );
  }
}

class SwitchTheme extends StatelessWidget {
  SwitchTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppTheme.instance.isDartTheme,
      onChanged: (value) {
        AppTheme.instance.dartTheme();
      },
    );
  }
}
