import 'package:first_app/widgets/button.dart';
import 'package:first_app/widgets/customcard.dart';
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
            body: SingleChildScrollView(
              child: Padding(
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
                            color: Colors.white.withOpacity(0.75),
                            fontSize: 22),
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
                      Transform.translate(
                        offset: const Offset(0, -15),
                        child: const CustomCard(
                          number: "Euro",
                          exchange: "6 428",
                          coin: "EUR",
                          textColor1: Colors.white,
                          icon: Icon(Icons.currency_bitcoin),
                          bgColor: Color(0xfff202123),
                          textColor2: Color(0xfff616365),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -40),
                        child: const CustomCard(
                          number: "Euro",
                          exchange: "6 428",
                          coin: "EUR",
                          textColor1: Colors.white,
                          icon: Icon(Icons.currency_bitcoin),
                          bgColor: Color(0xfff202123),
                          textColor2: Color(0xfff616365),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -55),
                        child: const CustomCard(
                          number: "Euro",
                          exchange: "6 428",
                          coin: "EUR",
                          textColor1: Colors.white,
                          icon: Icon(Icons.currency_bitcoin),
                          bgColor: Color(0xfff202123),
                          textColor2: Color(0xfff616365),
                        ),
                      ),
                    ]),
              ),
            )));
  }
}
