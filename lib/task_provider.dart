import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_menanger/task_model.dart';
import 'package:http/http.dart' as http;

class TaskProvider extends ChangeNotifier {
  final List<TaskModel> zadatci = [];

  Future<void> getFromDatabase() async {
    final Uri url = Uri.parse("https://task-mananger-fa862-default-rtdb.europe-west1.firebasedatabase.app/.json");
    final response = await http.get(url);
    final data = response.body;

    final tasks = jsonDecode(data)["000"];
    final parentsName = tasks.keys.toList();

    parentsName.forEach((element) {
      final taskModel = TaskModel.fromMap(tasks[element]);
      zadatci.add(taskModel);
    });

    notifyListeners();

    print(response.body);
  }

  void markAsCompleate(int index) {
    zadatci[index].isActive = !zadatci[index].isActive;
    notifyListeners();
  }

  void deleteTask(int index) {
    zadatci.removeAt(index);
    notifyListeners();
  }

  void addTask() {
    getFromDatabase();
    // final taskModel = TaskModel(
    //   title: "Nadslov",
    //   description: "Opis",
    //   isActive: true,
    // );
    // zadatci.add(taskModel);
    // notifyListeners();
  }
}
