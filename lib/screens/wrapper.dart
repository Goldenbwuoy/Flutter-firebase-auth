import 'package:authapp/models/user.dart';
import 'package:authapp/screens/authenticate/authenticate.dart';
import 'package:authapp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either home or authenticate based on whether user is null or not
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
