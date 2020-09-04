import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/welcome_screen.dart';
import 'package:login_app/screens/registration_screen.dart';
import 'package:login_app/screens/customers_list.dart';
import 'package:login_app/screens/todo_list.dart';
import 'package:login_app/screens/sidebar_menu.dart';
import 'package:login_app/screens/instructors_screen.dart';
import 'package:login_app/providers/instructors_provider.dart';
import 'providers/instructor.dart';

void main() => runApp(mainMenu());

class mainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Instructors(),
        ),
        ChangeNotifierProvider(
          create: (context) => Instructor(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute: 'instructors_screen',
        routes: {
          'welcome_screen': (context) => WelcomeScreen(),
          'login_screen': (context) => LoginScreen(),
          'registeration_screen': (context) => RegistrationScreen(),
          'customers_list' : (context) => Customers_list(),
          'todo_list' : (context) => todo_list(),
          'sidebar_menu': (context) => SideBarLayout(),
          'instructors_screen': (context) => InstructorsScreen(),
        },


      ),
    );
  }
}
