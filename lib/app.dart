import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_menanger/task_page.dart';
import 'package:task_menanger/task_provider.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(create: (_) => TaskProvider()),
      ],
      child: MaterialApp(
        home: Page(),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD9E9E7),
          centerTitle: true,
          title: Text(
            "Task Menanger",
            style: TextStyle(color: Color(0xFF6B7775)),
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => taskProvider.addTask(),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Text("Add"),
        ),
        body: TaskListPage(),
      ),
    );
  }
}
