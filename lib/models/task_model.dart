import 'package:flutter/cupertino.dart';

class Task{
  String? titleText;
   bool? ischecked = false;
   bool? value;
  Task({this.ischecked = false, this.titleText, this.value});
  String? get getTitleText => titleText;
  bool? get getIsChecked => ischecked;
  //Toggle method that will toggle the isChecked
 void toggleChecked(){
   ischecked = value; // (!) this sign, the prefix for (not of) and suffixes for (null check)
 }

}