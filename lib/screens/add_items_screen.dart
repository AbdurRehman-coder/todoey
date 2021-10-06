import 'package:flutter/material.dart';
import 'package:todoey/widgets/add_items_widget.dart';
class AddItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey[300],
      child: Container(

          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        child: AddToDo(),
      ),
    );
  }
}