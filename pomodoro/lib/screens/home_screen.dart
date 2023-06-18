import 'dart:async';

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeWidget> {
  int totalSeconds = 1500;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
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
                "$totalSeconds",
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
                    onPressed: onStartPressed,
                    iconSize: 80,
                    icon: const Icon(
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
                                Text("0",
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
