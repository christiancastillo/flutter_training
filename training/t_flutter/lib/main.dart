//Live template: Copied code -> File -> Settings -> Editor -> Live Templates -> add live template button -> paste copied code -> Click on shorten EQ Names
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
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
  bool _value1 = false;
  bool _value2 = false;
  int _valueInt1 = 0;
  int _valueInt2 = 0;

  void _setValueInt1(int value){
    setState((){
      _valueInt1 = value;
    });
  }

  void _setValueInt2(int value){
    setState((){
      _valueInt2 = value;
    });
  }  

  void _value1Changed(bool value) {
    setState(() {
      _value1 = value;
    });
  }

  Widget makeRadios() {
    List<Widget> list = [];
    
    Column column = Column(children: list,);

    for (int i = 0; i<3;i++){
      list.add(Radio(value: i, groupValue: _valueInt1, onChanged: null));
    } 
    return column;
  }

  Widget makeRadioTiles(){
    List<Widget> list = [];

    Column column = Column(children: list);

    for(int i = 0; i< 10; i++){
      list.add(RadioListTile(
        value: i, 
        groupValue: _valueInt1, 
        onChanged: _setValueInt2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Render item $i'),
        subtitle: Text('Bla bla bla.')),
        );
    }
    return column;

  }

  void _value2Changed(bool value) {
    setState(() {
      _value2 = value;
    });
  }

  void _onClick() {
    setState(() {
      _value = 'my name is christian';
    });
  }

  void _add() {
    setState(() {
      _integerValue++;
    });
  }

  void _substract() {
    setState(() {
      _integerValue--;
    });
  }

  void _onPressed(String value) {
    setState(() {
      _value = value;
    });
  }

  void _onPressedButton() {
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  void _onPressedGetName() {
    setState(() {
      _nombre = 'Christian Castillo';
    });
  }

  void _onChangeInput() {
    setState(() => _value = 'Change: $_valueInput');
  }

  void _onSubmit() {
    setState(() => _value = 'Input: $_valueInput');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bla bla bla.'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: Column(children: <Widget>[
            Text(_value),
            Text('Valor: $_integerValue'),
            Text('Nombre: $_nombre'),
            ElevatedButton(
                onPressed: () => _onPressed('BLA'),
                child: const Text('Click me!!!!')),
            TextButton(
                onPressed: () => _onPressedButton(),
                child: const Text('Click me!')),
            IconButton(onPressed: _add, icon: const Icon(Icons.add)
            ),
            IconButton(onPressed: _substract, icon: const Icon(Icons.remove)),
            TextButton(
                onPressed: _onPressedGetName,
                child: Text('OBtener nombres----')
                ),
            const Text('--------INPUT WIDGETSSS---------'),
            Text('_valueInput'),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                hintText: 'Ej: Juan Pérez',
                icon: Icon(Icons.people),
              ),
              autocorrect: true,
              keyboardType: TextInputType.number,
              //onChanged: _onChangeInput,
              //onSubmitted: _onSubmit,
            ),
            const Text('-------------------'),
            Text('USO DE CHECKBOXES'),
            Checkbox(value: _value1, onChanged: null),
            CheckboxListTile(
                value: _value2,
                onChanged: null,
                title: Text('Hello WORLD'),
                subtitle: Text('Subtitle'),
                controlAffinity: ListTileControlAffinity.trailing, //platform = derecha, leading = izquierda
                secondary: Icon(Icons.archive),
                activeColor: Colors.red),
            const Text('---------------'),
            const Text('USO DE RADIOS'),
            makeRadios(),
            makeRadioTiles(),
          ]
          )
          )
          ),
    );
  }
}
