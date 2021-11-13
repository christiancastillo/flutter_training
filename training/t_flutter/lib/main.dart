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

  String _value = 'Hello World!!';
  int _integerValue = 0;
  String _nombre = '';
  String _valueInput = '';


    void _onClick(){
      setState((){
        _value = 'my name is christian';
      });
    }

    void _add(){
      setState((){
        _integerValue++;
      });
    }

    void _substract(){
      setState((){
        _integerValue--;
      });
    }

    void _onPressed(String value){
      setState((){
        _value = value;
      });
    }

    void _onPressedButton(){
      setState((){
        _value = DateTime.now().toString();
      });
      }

    void _onPressedGetName(){
      setState((){
        _nombre = 'Christian Castillo';
      });
    }

    void _onChangeInput() => setState(() => _value = 'Change: $_valueInput');
    void _onSubmit() => setState(() => _value = 'Input: $_valueInput');

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
              children: <Widget>[
                Text(_value),
                Text('Valor: $_integerValue'),
                Text('Nombre: $_nombre'),
                ElevatedButton(onPressed:  () => _onPressed('BLA'), child: const Text('Click me!!!!')),
                TextButton(onPressed: () => _onPressedButton(), child: const Text('Click me!')),
                IconButton(onPressed: _add, icon: const Icon(Icons.add)),
                IconButton(onPressed: _substract, icon: const Icon(Icons.remove)),
                TextButton(onPressed: _onPressedGetName, child: Text('OBtener nombres----')),
                const Text('--------INPUT WIDGETSSS---------'),
                Text('$_valueInput'),
                TextField(),
              ]
            )
          )
        ),
    );
  }
}