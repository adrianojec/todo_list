import 'package:flutter/material.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/widget/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.taskName,
              toggleCheckboxState: (value) => taskData.updateTask(task),
              deleteTask: () => taskData.deleteTask(task),
            );
          },
        );
      },
    );
  }
}
