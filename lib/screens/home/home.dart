import 'package:authapp/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple[400],
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: Center(
        child: Text('Welcome Home'),
      ),
    );
  }
}
