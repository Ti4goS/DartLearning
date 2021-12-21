import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({ Key? key }) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  int contador=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Somador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Você Apertou o botão $contador')],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,child: const Icon(Icons.add),)
    );
  }

  void _incrementCounter(){
    setState(() {
      contador++;
    });
  }
}