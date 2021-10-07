import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task_model.dart';

class AddToModel extends ChangeNotifier{
List<Task> taskList = [];
addToList(){
  taskList.add(Task(titleText: 'add title'));
  notifyListeners();
}
}