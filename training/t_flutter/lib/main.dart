//Live template: Copied code -> File -> Settings -> Editor -> Live Templates -> add live template button -> paste copied code -> Click on shorten EQ Names
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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bla bla bla.'),
        ),
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: const <Widget>[
                Text('Hello World..')
              ]
            )
          )
        ),
    );
  }
}