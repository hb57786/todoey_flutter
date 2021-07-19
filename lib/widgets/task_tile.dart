import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkboxCallback,
    );
  }
}
