import 'package:flutter/material.dart';
import 'package:task_menanger/task_model.dart';
import 'package:task_menanger/task_widget.dart';

class TaskListPage extends StatelessWidget {
  TaskListPage({
    super.key,
  });

  final List<TaskModel> zadatci = [
    TaskModel(
      title: "asdsafdsfsd 1",
      description: "Ovo je neki zadatak broj 1 ",
      isActive: true,
    ),
    TaskModel(
      title: "asdsafdsfsd 1",
      description: "Ovo je neki zadatak broj 1 ",
      isActive: false,
    ),
    TaskModel(
      title: "asdsafdsfsd 1",
      description: "Ovo je neki zadatak broj 1 ",
      isActive: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: zadatci.length,
        itemBuilder: (context, index) {
          return Task(
            task: zadatci[index],
            onPress: () {
              zadatci[index].isActive = !zadatci[index].isActive;
            },
          );
        },
      ),
    );
  }
}
