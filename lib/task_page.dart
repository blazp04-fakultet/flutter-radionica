import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_menanger/task_model.dart';
import 'package:task_menanger/task_provider.dart';
import 'package:task_menanger/task_widget.dart';

class TaskListPage extends StatelessWidget {
  TaskListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: taskProvider.zadatci.length,
        itemBuilder: (context, index) {
          return Task(
            task: taskProvider.zadatci[index],
            onCompleate: () => taskProvider.markAsCompleate(index),
            onDelete: () => taskProvider.deleteTask(index),
          );
        },
      ),
    );
  }
}
