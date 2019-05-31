import 'package:flutter/material.dart';

class NewUserPage extends StatefulWidget {
  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {
  final _formNewUser = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('novo usuário'),
      ),
      backgroundColor: Colors.teal[50],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formNewUser,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'nome';
                      }
                    },
                    style: new TextStyle(color: Colors.black, fontSize: 20.0),
                    decoration: InputDecoration(
                        labelText: 'usuário',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'e-mail';
                      }
                    },
                    style: new TextStyle(color: Colors.black, fontSize: 20.0),
                    decoration: InputDecoration(
                        labelText: 'telefone',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black, fontSize: 20.0),
                    decoration: InputDecoration(
                        labelText: 'senha',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
