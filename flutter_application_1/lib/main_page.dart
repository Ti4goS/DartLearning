import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomMenuPages/welcome_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'pages/BottomMenuPages/add_page.dart';
import 'pages/BottomMenuPages/minus_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exemple',
      theme: ThemeData(
        primaryColorLight: Colors.blue,
        primaryColorDark: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const LoginPage(),
        '/home': (context) => const HomePageApp(title: 'pagina inicial')
      },
    );
  }
}

class HomePageApp extends StatefulWidget {
  const HomePageApp({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  int _indexPage = 2;

  final List<Widget> _screens = [
    const WelcomePage(),
    const AddPage(),
    const MinusPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_indexPage],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _indexPage, 
        onTap: _indexChanger,
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.badge_outlined),
              title:  const Text('Login'),
              selectedColor: Colors.lime),
          SalomonBottomBarItem(
              icon: const Icon(Icons.add),
              title: const Text('Somar'),
              selectedColor: Colors.deepPurpleAccent),
          SalomonBottomBarItem(
              icon: const Icon(Icons.minimize),
              title: const Text('Diminuir'),
              selectedColor: Colors.redAccent),
        ]),
    );
  }

  void _indexChanger(int index) {
    setState(() {
      _indexPage = index;
    });
  }
}
