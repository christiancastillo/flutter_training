import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello world';


  void _onClick(){
    setState((){
      _value = 'My name is Christian Castillo';
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('Bla bla bla.'),
        ),
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value),
                ElevatedButton(onPressed: _onClick, child: const Text('Clickk me!'),)
              ]
            )
          )
        ),
    );
  }
}