import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todolist2/view/add_task.dart';
import 'package:todolist2/view/header.dart';
import 'package:todolist2/view/list_view.dart';
import 'package:todolist2/view/task_info.dart';
import 'package:todolist2/view_model/view_model.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>  ViewModel(),child: const MyApp(), )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SafeArea(
        child: Column(

          children: [

            Expanded(
                flex: 1,
                child: Header()),
            Expanded(
                flex: 1,
                child:TaskInfo() ),
            Expanded(
                flex: 5,
                child: Listview() ),
          ],
        ),
      ),
      floatingActionButton: AddTask() ,
    );
  }
}