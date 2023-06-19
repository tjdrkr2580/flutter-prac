import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'Webflix',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
    );
  }
}
