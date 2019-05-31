import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formLogin,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    <Widget>[
                      TextFormField(
                        autofocus: true, 
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value.isEmpty){
                            return 'Informe o usuário';
                          }
                        },
                      style: new TextStyle(color:Colors.black, fontSize: 20.0),
                      decoration: InputDecoration(
                        labelText: 'usuário',
                        labelStyle: TextStyle(color: Colors.black)
                      )
                      ,),
                      Divider(),
                      TextFormField(autofocus: true, obscureText: true, keyboardType: TextInputType.text,
                      style: new TextStyle(color:Colors.black, fontSize: 20.0),
                      
                      decoration: InputDecoration(
                        labelText: 'senha',
                        labelStyle: TextStyle(color: Colors.black)
                      ),),
                      Divider(color: Colors.deepPurple,),
                      RaisedButton.icon(
                        color: Colors.deepOrange,
                        icon: Icon(Icons.person_add),
                        onPressed: () {
                          },
                        label: Text('novo usuário',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        
                        ),
                      ),
                      Divider(),
                      RaisedButton.icon(
                        color: Colors.deepPurple[50],
                        icon: Icon(Icons.lock),
                        onPressed: () {
                          if (_formLogin.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                          Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));
                        }},
                        label: Text('entrar',
                        style: TextStyle(fontSize: 20)
                        ),
                      )
                      
                      ]
                      )
                      )
                      )
                      )
                      );
  }
}
