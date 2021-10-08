import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_to_model.dart';
import 'package:todoey/widgets/add_items_widget.dart';
class AddItemsList extends StatefulWidget {
  AddItemsList({this.getTextFieldData});
   Function? getTextFieldData;
  @override
  State<AddItemsList> createState() => _AddItemsListState();
}

class _AddItemsListState extends State<AddItemsList> {
  String textFieldData = '';
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey[300],
      child: Container(

          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        child: Padding(
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
            onChanged: (String val){
              textFieldData = val; //Add text input to the new variable in this case textFieldData
              print(textFieldData);

            },
            decoration: const InputDecoration(
                hintText: 'Enter your activity',
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
                    Provider.of<AddToModel>(context, listen: false).addToList(taskData: textFieldData);
                     Navigator.pop(context);
                    // setState(() {
                    //   widget.getTextFieldData!(textFieldData);
                    // });

                  },),
              ),
            ],
          )
        ],
      ),
    ),
      ),
    );
  }
}