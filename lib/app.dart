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
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFD9E9E7),
              centerTitle: true,
              title: Text(
                "Task Menanger",
                style: TextStyle(color: Color(0xFF6B7775)),
              ),
            ),
            body: TaskListPage(),
          ),
        ),
      ),
    );
  }
}
