import 'package:flutter/material.dart';
import 'package:todo_list/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(taskName: 'Refactor Petshop'),
    Task(taskName: 'Review Redux'),
    Task(taskName: 'Study Async Redux'),
  ];

  List<Task> get tasks => List.unmodifiable(_tasks);

  void addTask(String taskName){
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
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