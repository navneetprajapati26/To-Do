import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              
              decoration: BoxDecoration(color: Colors.white70,borderRadius: BorderRadius.circular(10),),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                     hintText: "Add a new task",border: OutlineInputBorder(),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save butten
                //Mybutton(text: "Save", onPressed: onPressed:(){})
                CupertinoButton(
                    child: Text(
                      "S A V E",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ),
                    onPressed: onSave),
                //cancel bullen
                CupertinoButton(
                    child: Text(
                      "C A N C I L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ),
                    onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
