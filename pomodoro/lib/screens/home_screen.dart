import 'dart:async';

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeWidget> {
  static const twentyMinutes = 1500;
  int totalSeconds = twentyMinutes;
  late Timer timer;
  bool isRunning = false;
  int pomodors = 0;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalSeconds = twentyMinutes;
        pomodors = pomodors + 1;
      });
      onPausePressed();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Flexible(
              flex: 3,
              child: Center(
                child: IconButton(
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    iconSize: 80,
                    icon: isRunning
                        ? const Icon(
                            Icons.pause_circle_outline,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.play_circle_outline,
                            color: Colors.white,
                          )),
              )),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [
                                Text("Pomodors",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text("$pomodors",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700))
                              ])
                            ])),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
