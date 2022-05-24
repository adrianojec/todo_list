import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckboxState;
  final Function deleteTask;

  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.toggleCheckboxState,
    required this.deleteTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => deleteTask(),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        onChanged: (value) => toggleCheckboxState(value),
        value: isChecked,
      ),
    );
  }
}
