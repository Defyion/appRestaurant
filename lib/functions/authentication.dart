import 'package:app_restaurant_test/view/pages/adm.login.page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


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
            onPressed: signIn,
            child: Text('Entrar'),
          )
        ]
      )
    )
  );
}
  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
    FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
    Navigator.push(context, MaterialPageRoute(builder: (context) => AdmLogin(user: user)));
    // TODO determinar o user dentro de AdmLogin na adm.login.page
    }catch(e){
      print(e.message);

    }
  }
}
}