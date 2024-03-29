import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({@required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            TextField(
              autofocus: true,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () {
                newTaskTitle != null
                    ? Provider.of<TaskData>(context).addTask(newTaskTitle)
                    : newTaskTitle = "";
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
