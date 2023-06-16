import 'package:first_app/widgets/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
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
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.75), fontSize: 22),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    '\$5 194 382',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Button(
                          bgColor: Color(0xFFF1B33B),
                          text: "Transfer",
                          textColor: Colors.black),
                      Button(
                          bgColor: const Color(0xFF202123),
                          text: "Request",
                          textColor: Colors.white.withOpacity(0.75)),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("Wallets",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600)),
                      Text("View all",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.75),
                              fontSize: 18)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1F2123),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Euro",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "6 428",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "EUR",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
