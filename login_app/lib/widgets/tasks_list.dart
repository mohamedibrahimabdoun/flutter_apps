import 'package:flutter/material.dart';
import 'package:login_app/widgets/task_tile.dart';
import 'package:login_app/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback:(checkboxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });

            }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

/*
ListView(
children: <Widget>[
TaskTile(
taskTitle: Tasks[0].name,
isChecked: Tasks[0].isDone,
),
TaskTile(
taskTitle: Tasks[1].name,
isChecked: Tasks[1].isDone,
),
TaskTile(
taskTitle: Tasks[2].name,
isChecked: Tasks[2].isDone,
),
],
);*/
