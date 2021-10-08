import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task_model.dart';

class AddToModel extends ChangeNotifier{
List<Task> taskList = [];
 bool? isChecked = false;

// Function(bool val)? toggleCallBack;


addToList({String? taskData, bool? value}){
  taskList.add(Task(titleText: taskData, value: value, ischecked: isChecked ));
  notifyListeners();
}

}