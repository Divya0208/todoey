import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)) 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              )
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newTask){
                newTaskTitle = newTask;
              },
            ),
            SizedBox(
              height: 20.0
            ),
            FlatButton(
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              }, 
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              )
            )
          ]
        ),
      ),
    );
  }
}