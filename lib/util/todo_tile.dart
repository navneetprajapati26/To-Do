import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taslComleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile(
      {Key? key,
      required this.onChanged,
      required this.taskName,
      required this.taslComleted,
      required this.deleteFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 12, right: 12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              //checkBox
              Checkbox(
                value: taslComleted,
                onChanged: onChanged,
                activeColor: Colors.pink,
              ),

              //Task name
              Text(
                taskName,
                style: TextStyle(
                    decoration: taslComleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
