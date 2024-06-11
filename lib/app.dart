import 'package:flutter/material.dart';
import 'package:knjige/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knjige',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
