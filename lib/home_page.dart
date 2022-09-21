import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["getint 20 LPA", true],
    ["mary with ujala ", true],
    ["making many ", false]
  ];

  // Chackbox was tapped

  void checkBoxChanged(bool? value, int index) {
    setState((){
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("T O  D O"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
              onChanged: (value) => checkBoxChanged(value, index),
              taskName: toDoList[index][0],
              taslComleted: toDoList[index][1]);
        },
      ),
    );
  }
}
