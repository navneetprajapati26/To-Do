import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taslComleted;
  Function(bool?)? onChanged;

  TodoTile(
      {Key? key,
      required this.onChanged,
      required this.taskName,
      required this.taslComleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 12, right: 12),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            //checkBox
            Checkbox(value: taslComleted, onChanged: onChanged),

            //Task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
