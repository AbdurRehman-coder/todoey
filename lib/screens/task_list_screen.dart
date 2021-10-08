import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_to_model.dart';
import 'package:todoey/screens/add_items_screen.dart';
import 'package:todoey/widgets/add_items_widget.dart';
import 'package:todoey/widgets/items_list.dart';
import 'package:todoey/models/task_model.dart';
class TaskList extends StatefulWidget {
   TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // some arguments that will be passed to the items_list file
  List<Task> task = [
    Task(titleText: 'Brushing my teeth'),
    Task(titleText: 'Brushing my Shoes'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
       showModalBottomSheet(context: context,
           builder: (BuildContext context){
         return AddItemsList();
         // return AddItemsList(getTextFieldData:
         //     (getTextToAdd){
         //       setState(() {
         //         task.add(Task(titleText: getTextToAdd));
         //       });
         //       Navigator.pop(context);
         //     }
         // );
           });
        },
        child: Icon(CupertinoIcons.add,
        size: 30,),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding:  EdgeInsets.fromLTRB(30, 60, 30, 30),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    CircleAvatar(

                        child: Icon(CupertinoIcons.list_bullet,
                        color: Colors.lightBlueAccent,),
                    backgroundColor: Colors.white,
                    radius: 25,),
                    SizedBox( height: 10,),
                    Text('Todoey',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    SizedBox(height: 5,),
                    Text('${Provider.of<AddToModel>(context).taskList.length} Task',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(top: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),),
                ),
                child: ItemsList(),
                // child: ItemsList(tasks: task),
              ),
            ),
          ]
      ),
    );
  }
}