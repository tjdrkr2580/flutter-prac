import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 100, 95, 107),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              constructorWidget(
                text: '1',
              ),
              constructorWidget(
                text: '2',
              ),
              constructorWidget(
                text: '3',
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class constructorWidget extends StatelessWidget {
  const constructorWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white));
  }
}
