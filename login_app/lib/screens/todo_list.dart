import 'package:flutter/material.dart';
import 'package:login_app/widgets/tasks_list.dart';
import 'package:login_app/widgets/task_tile.dart';
import 'package:login_app/screens/add_task_screen.dart';
import 'package:login_app/models/task.dart';
import 'package:login_app/widgets/tasks_list.dart';

void main() {
  runApp(todo_list());
}

class todo_list extends StatefulWidget {

  @override
  _todo_listState createState() => _todo_listState();
}

class _todo_listState extends State<todo_list> {
  List<Task> tasks = [
    Task(name: "task1"),
    Task(name: "task2"),
    Task(name: "Third Task")
  ];

  Widget buildButtomSheet(BuildContext context){

    return Container(

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlue,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text('Todo List',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${tasks.length} Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child:  TasksList(tasks),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder:(context)=> AddTaskScreen( (newTaskTitle){
            print(newTaskTitle);
            setState(() {
              tasks.add(Task(name: newTaskTitle));
            });
            Navigator.pop(context);

          }));
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}


