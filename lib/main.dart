import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_to_model.dart';
import 'package:todoey/models/task_model.dart';
import 'package:todoey/screens/task_list_screen.dart';
void main() => runApp(
  ChangeNotifierProvider<AddToModel>(
      create: (context) => AddToModel(),
    child: MyApp(),
  )
);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: TaskList(),
   );

  }
}