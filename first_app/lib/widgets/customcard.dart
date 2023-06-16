import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String coin;
  final String number;
  final String exchange;
  final Icon icon;
  final Color textColor1;
  final Color textColor2;
  final Color bgColor;

  const CustomCard(
      {super.key,
      required this.number,
      required this.exchange,
      required this.coin,
      required this.textColor1,
      required this.icon,
      required this.bgColor,
      required this.textColor2});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coin,
                    style: TextStyle(
                        color: textColor1,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        number,
                        style: TextStyle(
                            color: textColor1,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        exchange,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-2, 10),
                  child: const Icon(Icons.euro_rounded,
                      size: 88, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
