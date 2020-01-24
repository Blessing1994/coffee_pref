
import 'package:coffee_pref/models/user.dart';
import 'package:coffee_pref/screens/wrapper.dart';
import 'package:coffee_pref/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
        title: 'Coffee Pref',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          fontFamily: 'Comfortaa',
        ),
      ),
    );
  }
}
