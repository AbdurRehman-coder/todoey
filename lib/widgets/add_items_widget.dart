import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';
class AddToDo extends StatefulWidget {


  static String? addTitleText;
 static List<String>? tasking = [];

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         const Text('Add Items',
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlueAccent,

          ),),
          SizedBox( height:  15,),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your activty',
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
    //           labelText: 'Activity',
    //           labelStyle: TextStyle(
    // fontSize: 16,
    // color: Colors.blueGrey,
    //         ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent, width: 1
                ),
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width: 2
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
          ),
         onChanged: (String val){


         },
         // onSubmitted: (String value){
         //      titleText = value;
         // },

         ),
          const SizedBox( height: 25,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130,50),
                  ),
                    child: Text('add'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),),
                onPressed: (){
                  setState(() {

                  });

                },),
              ),
            ],
          )
        ],
      ),
    );
  }
}