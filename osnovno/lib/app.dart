import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 9, 52, 87),
            title: Text(
              "Blaz",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Ja sam Blaž",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Kvesa♫",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Klikno sam!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Klikni"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
