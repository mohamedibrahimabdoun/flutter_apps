import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle;

  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          )
        ),
        child: Column(
          children: <Widget>[
            Text('Add Task',style: TextStyle(
              color: Colors.white,
              fontSize: 30.0
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtext){
                newTaskTitle=newtext;
             //   print('newTaskTitle: $newTaskTitle');

              },

            ),

            FlatButton(
              child: Text('Add'),
              color: Colors.teal,
              onPressed: (){
                addTaskCallback(newTaskTitle);

              },


            ),

          ],
        ),
      ),

    );
  }
}
