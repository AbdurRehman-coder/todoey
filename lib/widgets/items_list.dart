import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_to_model.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/screens/task_list_screen.dart';

class ItemsList extends StatefulWidget {




   // ItemsList({this.tasks});
  // final String? titleText;
  // final bool? isChecked;
  // final void Function(bool? val)? checkboxState;
  List<Task>? tasks = [];

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
      return Consumer<AddToModel>(
          builder: (context, provid, child) {
            return ListView.builder(
                itemCount: provid.listLength,
                itemBuilder: (context, index){
                  return ListTile(
                    onLongPress: (){
                      provid.removeTile(index);
                    },
                    onTap: (){

                    },
                    title: Text(
                      provid.tasks[index].titleText!,
                      style: TextStyle(
                        decoration: provid.tasks[index].ischecked! ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    trailing: Checkbox(
                        activeColor: Colors.red,
                        fillColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                        checkColor: Colors.red,
                        //value: context.watch<AddToModel>().isChecked,
                        value: provid.tasks[index].ischecked,
                        onChanged: (value){
                       provid.toggleTask(provid.tasks[index]);
                        }
                    ),

                  );
                  // return ItemsTile(
                  //   titleText: ,
                  //   isChecked: task![index].ischecked,
                  //   checkboxState: (value){
                  //     setState(() {
                  //       task![index].toggleChecked();
                  //     });
                  //   },
                  // );

                }
            );
          });

  }
}