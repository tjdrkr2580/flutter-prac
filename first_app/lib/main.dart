import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF181818),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Text(
                            "Hey, Selena",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Welcome, Back",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
