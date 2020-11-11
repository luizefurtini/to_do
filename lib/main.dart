import 'package:animacao/screens/login/home/home_screen.dart';
import 'package:animacao/screens/login/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

import 'screens/login/login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animação',
       debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
