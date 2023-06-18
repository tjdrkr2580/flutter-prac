import 'package:flutter/material.dart';
import 'package:pomodoro/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE7626C),
        textTheme:
            const TextTheme(displayLarge: TextStyle(color: Color(0xFF232B55))),
        cardColor: const Color(0xFF232B55),
      ),
      home: const HomeWidget(),
    );
  }
}
