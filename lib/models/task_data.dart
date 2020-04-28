import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTask){
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}