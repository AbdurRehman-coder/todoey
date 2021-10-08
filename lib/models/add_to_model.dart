import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task_model.dart';

class AddToModel extends ChangeNotifier{

List<Task> _taskList = [
  Task(titleText: 'Go to gym',),
  Task(titleText: 'Eat launch'),
];

UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_taskList);
}

int get listLength => _taskList.length;

void addToList(String newTask){
  _taskList.add(Task(titleText: newTask));
  notifyListeners();
}

void toggleTask(Task task){
  task.toggleChecked();
  notifyListeners();
}
void removeTile(int index){
  _taskList.removeAt(index);
  notifyListeners();
}

// Function(bool val)? toggleCallBack;


// addToList({String? taskData, bool? value}){
//   taskList.add(Task(titleText: taskData, ));
//   notifyListeners();
// }

}