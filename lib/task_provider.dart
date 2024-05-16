import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_menanger/task_model.dart';

class TaskProvider extends ChangeNotifier {
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

  void markAsCompleate(int index) {
    zadatci[index].isActive = !zadatci[index].isActive;
    notifyListeners();
  }

  void deleteTask(int index) {
    zadatci.removeAt(index);
    notifyListeners();
  }

  void addTask() {
    final taskModel = TaskModel(
      title: "Nadslov",
      description: "Opis",
      isActive: true,
    );
    zadatci.add(taskModel);
    notifyListeners();
  }
}
