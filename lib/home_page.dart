import 'package:flutter/material.dart';
import 'package:todo/util/todo_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("T O  D O"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TodoTile(
            taskName: "TO DO",
            taslComleted: true,
            onChanged: (p0){},
          ),
          TodoTile(
            taskName: "TO DO",
            taslComleted: false,
            onChanged: (p0){},
          ),
          TodoTile(
            taskName: "TO DO",
            taslComleted: true,
            onChanged: (p0){},
          ),

        ],
      ),
    );
  }
}
