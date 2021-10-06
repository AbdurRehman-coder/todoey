import 'package:flutter/material.dart';

class ItemsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('your remaining excercise'),
      trailing: Checkbox(
        value: false, onChanged: (bool? value) {

      },
      ),

    );
  }
}