import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        }
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 80.0, left: 40.0, right: 40.0, bottom: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(Icons.list, size: 30.0, color: Colors.lightBlueAccent,)
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  )
                ),
              ]
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30.0, right: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)) 
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}


