import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TaskList extends StatelessWidget {
   TaskList({Key? key}) : super(key: key);
  List<String> checkouts = ['excercise', 'break fast', 'music'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    CircleAvatar(

                        child: Icon(CupertinoIcons.list_bullet,
                        color: Colors.lightBlueAccent,),
                    backgroundColor: Colors.white,
                    radius: 25,),
                    SizedBox( height: 10,),
                    Text('Todo List',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    SizedBox(height: 5,),
                    Text('12 tasks remaining',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                  ],
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
                child: ListView.builder(
                   itemCount: 10,
                    itemBuilder: (context, index){
                      return
                    }),
              ),
            ),
          ]
      ),
    );
  }

}