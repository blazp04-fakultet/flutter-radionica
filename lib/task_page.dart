import 'package:flutter/material.dart';
import 'package:task_menanger/task_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Task(
            title: "asdsafdsfsd 1",
            description: "Ovo je neki zadatak broj 1 ",
            primary: Color(0xFF7BABA3),
            primaryWhie: Color(0xFFD9E9E7),
            deleteButtonColor: Color(0xFFCC786B),
            secondary: Color(0xFF5B6866),
          ),
          Task(
            title: "Sivi zadatak 1",
            description: "Ovo je neki zadatak broj 1 ",
            primary: Color(0xFF6B7775),
            primaryWhie: Color(0xFFC0C0C0),
            deleteButtonColor: Color(0xFF6B7775),
            secondary: Color(0xFF6B7775),
          ),
          Task(
            title: "Crveni zadatak 1",
            description: "Ovo je neki zadatak broj 1 ",
            primary: Color(0xFFFF1A1A),
            primaryWhie: Color(0xFFFF9898),
            deleteButtonColor: Color(0xFFFF1A1A),
            secondary: Color(0xFFFF1A1A),
          ),
        ],
      ),
    );
  }
}
