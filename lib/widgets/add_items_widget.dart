import 'package:flutter/material.dart';
class AddToDo extends StatelessWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('add items'.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlueAccent,

          ),),
          SizedBox( height:  15,),
         const TextField(
            decoration: InputDecoration(
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
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent, width: 3
                ),
                borderRadius: BorderRadius.all(Radius.circular(100),),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
          ),

         ),
          SizedBox( height: 25,),
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

                },),
              ),
            ],
          )
        ],
      ),
    );
  }
}