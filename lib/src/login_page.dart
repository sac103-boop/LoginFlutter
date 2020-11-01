import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _correo = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30.0),
            height: 300,
          ),
          ListView(
            children: [_textbox()],
          ),
          FlatButton(onPressed: () {}, child: Text('Ingresar'))
        ],
      ),
    );
  }

  _textbox() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          labelText: 'Correo',
          suffixIcon: Icon(Icons.alternate_email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      onChanged: (value) {
        _correo = value;
      },
    );
  }
}
