import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isVisible = true;
  void onToggle() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.red))),
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              isVisible
                  ? const MyWidget()
                  : const Text("Not Visible",
                      style: TextStyle(color: Colors.black)),
              IconButton(
                  onPressed: onToggle,
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ))
            ]),
          )),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    print("init State!");
    super.initState();
  }

  @override
  void dispose() {
    print("bye");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Text Title",
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
