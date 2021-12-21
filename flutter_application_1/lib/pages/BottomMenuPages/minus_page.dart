import 'package:flutter/material.dart';

class MinusPage extends StatefulWidget {
  const MinusPage({Key? key }) : super(key: key);

  @override
  _MinusPageState createState() => _MinusPageState();
}

class _MinusPageState extends State<MinusPage> {
  int contador =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reduzir'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Você Apertou o botão $contador')],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _discrementCounter,child: const Icon(Icons.add),)
    );
  }

  void _discrementCounter(){
    contador--;
  }
}