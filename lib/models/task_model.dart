class Task{
  String? titleText;
  bool? ischecked = false;
  Task({this.ischecked = false, this.titleText});
  String? get getTitleText => titleText;
  bool? get getIsChecked => ischecked;
  //Toggle method that will toggle the isChecked
 void toggleChecked(){
   ischecked = !ischecked!; // (!) this sign, the prefix for (not of) and suffixes for (null check)
 }

}