import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  //run this whane first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Do Exercise of flutter", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
