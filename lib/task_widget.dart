import 'package:flutter/material.dart';
import 'package:task_menanger/task_model.dart';

class Task extends StatelessWidget {
  Task({
    required this.task,
    required this.onPress,
    super.key,
  }) {
    if (task.isActive) {
      primary = Color(0xFF7BABA3);
      primaryWhie = Color(0xFFD9E9E7);
      secondary = Color(0xFF5B6866);
      deleteButtonColor = Color(0xFFCC786B);
    } else {
      primary = Color(0xFF6B7775);
      primaryWhie = Color(0xFFC0C0C0);
      secondary = Color(0xFF6B7775);
      deleteButtonColor = Color(0xFF6B7775);
    }
  }

  TaskModel task;
  final VoidCallback onPress;

  late Color primary;
  late Color primaryWhie;
  late Color secondary;
  late Color deleteButtonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        left: 25,
        right: 25,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(20),
          height: 220,
          width: MediaQuery.of(context).size.width,
          color: primaryWhie,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: TextStyle(
                  color: primary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                task.description,
                style: TextStyle(
                  color: secondary,
                  fontSize: 20,
                ),
              ),
              Divider(
                thickness: 6,
                color: primary,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        onPress();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          primary,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                      child: Text(
                        "Završi",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          deleteButtonColor,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                      ),
                      child: Text(
                        "Poništi zadatak",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
