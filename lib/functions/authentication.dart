import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

var email = 1234;
var password = 1234;

class Authenticator extends StatefulWidget {
    final String email;
    final String password;
    Authenticator({@required this.email, this.password}); _AuthenticatorState createState() => _AuthenticatorState();

  }
  
class _AuthenticatorState extends State<Authenticator> {
    @override
    Widget build(BuildContext context) {
      return Container(
        
      );
    }
  }


