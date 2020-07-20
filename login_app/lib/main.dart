import 'package:flutter/material.dart';

import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/welcome_screen.dart';
import 'package:login_app/screens/registration_screen.dart';
import 'package:login_app/screens/customers_list.dart';
import 'package:login_app/screens/todo_list.dart';

void main() => runApp(mainMenu());

class mainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'login_screen': (context) => LoginScreen(),
        'registeration_screen': (context) => RegistrationScreen(),
        'customers_list' : (context) => Customers_list(),
        'todo_list' : (context) => todo_list(),
      },
    );
  }
}
