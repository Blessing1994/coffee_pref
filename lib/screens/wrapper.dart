import 'package:coffee_pref/models/user.dart';
import 'package:coffee_pref/screens/authenticate/authenticate.dart';
import 'package:coffee_pref/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    //return either home or authenticate widget
    // return Authenticate();
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
