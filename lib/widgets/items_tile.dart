// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class ItemsTile extends StatelessWidget {
//   const ItemsTile({Key? key, this.isChecked, required this.checkboxState, this.titleText}) : super(key: key);
//  final String? titleText;
//   final bool? isChecked;
//  final void Function(bool? val) checkboxState;
//
// @override
//   Widget build(BuildContext context) {
//
//     return ListTile(
//       onTap: (){
//
//       },
//       title: Text(titleText!,
//       style: TextStyle(
//         decoration: isChecked! ? TextDecoration.lineThrough : null,
//       ),
//       ),
//       trailing: Checkbox(
//           activeColor: Colors.red,
//           fillColor: MaterialStateProperty.all(Colors.lightBlueAccent),
//           checkColor: Colors.red,
//           value: isChecked,
//           onChanged: checkboxState,
//       ),
//
//     );
//   }
// }