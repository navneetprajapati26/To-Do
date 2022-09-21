import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  List toDoList = [
    // ["getint 20 LPA", true],
    // ["mary with ujala ", true],
    // ["making many ", false]
  ];

  // Chackbox was tapped

  void checkBoxChanged(bool? value, int index) {
    setState((){
      toDoList[index][1] = !toDoList[index][1];
    });
  }
  // Save new task
  void saveNewTask(){
    setState((){
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create New Task
  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
  }

  // delete Task
  void deleteTask(int index){
    setState((){
      toDoList.removeAt(index);
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
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
              onChanged: (value) => checkBoxChanged(value, index),
              taskName: toDoList[index][0],
              taslComleted: toDoList[index][1],
          deleteFunction: (context)=> deleteTask(index),);
        },
      ),
    );
  }
}
