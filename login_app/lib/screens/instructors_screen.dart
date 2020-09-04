import 'package:flutter/material.dart';
import '../widgets/instructor_list.dart';

class InstructorsScreen extends StatefulWidget {
  @override
  _InstructorsScreenState createState() => _InstructorsScreenState();
}

class _InstructorsScreenState extends State<InstructorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a search term'
          ),
        ),
      ),
      body: InstructorsList(),

    );
  }
}
