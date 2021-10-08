import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_to_model.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/screens/task_list_screen.dart';
import 'items_tile.dart';
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
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
      return Consumer<AddToModel>(
          builder: (context, provid, child) {
            return ListView.builder(
                itemCount: Provider.of<AddToModel>(context).taskList.length,
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){

                    },
                    title: Text(
                      provid.taskList[index].titleText!,
                      style: TextStyle(
                        decoration: provid.isChecked! ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    trailing: Checkbox(
                        activeColor: Colors.red,
                        fillColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                        checkColor: Colors.red,
                        //value: context.watch<AddToModel>().isChecked,
                        value: provid.taskList[index].ischecked,
                        onChanged: (value){
                          // Provider.of<AddToModel>(context, listen: false);
                          provid.addToList(value: value);

                          // setState(() {
                          //   Provider.of<Task>(context).toggleChecked();
                          // });
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