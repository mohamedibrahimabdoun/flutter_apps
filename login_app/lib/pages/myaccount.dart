import 'package:flutter/material.dart';
import 'navigation_bloc.dart';

class MyAccount extends StatelessWidget  with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Accounts",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28,color: Colors.white)),

    );
  }
}
