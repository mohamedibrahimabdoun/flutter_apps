import 'package:flutter/material.dart';
import 'navigation_bloc.dart';

class HomePage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("HomePage",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28,color: Colors.white)),

    );
  }
}
