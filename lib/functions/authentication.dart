import 'package:flutter/material.dart';
class Authenticator extends StatefulWidget {
    _AuthenticatorState createState() => _AuthenticatorState();
  }
  
class _AuthenticatorState extends State<Authenticator> {
    String _email, _password;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Scaffold(body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
            validator: (input) {
              if (input.isEmpty){
                return 'Por favor, digite um email válido: ';
              }
            },
            onSaved: (input) => _email = input,
            decoration: InputDecoration(
              labelText: 'Email')
          ),
            TextFormField(
            validator: (input) {
              if (input.length < 6){
                return 'Por favor, digite uma senha válida: ';
              }
            },
            onSaved: (input) => _password = input,
            decoration: InputDecoration(
              labelText: 'Senha'
            ),
            obscureText: true,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Entrar'),
          )
        ]
      )
    )
  );
}
  void signIn(){
    final formState = _formKey.currentState;
    if(formState.validate()){
// TODO Login na firebase
    }
  }
}
