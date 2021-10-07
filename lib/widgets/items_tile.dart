import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsTile extends StatefulWidget {
  @override
  State<ItemsTile> createState() => _ItemsTileState();
}

class _ItemsTileState extends State<ItemsTile> {
  bool isChecked = false;
  // void checkStateCall(bool newValue){
  //   setState(() {
  //     isChecked = newValue;
  //   });
  // }

@override
  Widget build(BuildContext context) {

    return ListTile(
      onTap: (){
     
      },
      title: Text('your remaining exercise',
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: CheckBox(checkState: isChecked, checkStateCallBack: (bool newValue) {
        setState(() {
          isChecked = newValue;
        });
      }),

    );
  }
}
class CheckBox extends StatelessWidget {
  const CheckBox({this.checkState, this.checkStateCallBack});
  final bool? checkState;
 final Function? checkStateCallBack;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkState,
        onChanged: (bool? value) {
     checkStateCallBack!(value);
    }
    );
  }
}