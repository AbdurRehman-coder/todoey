import 'package:flutter/cupertino.dart';

class Task{
  String? titleText;

  Task({ this.titleText});
  String? get getTitleText => titleText;
  //Toggle method that will toggle the isChecked
  bool? ischecked = false;
 void toggleChecked(){
   ischecked = !ischecked!; // (!) this sign, the prefix for (not of) and suffixes for (null check)
 }

}