import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final String number;
  final String alphabets;
  const NumberCard({super.key, required this.number, required this.alphabets});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          textAlign: TextAlign.center,
          softWrap: true,
          style: const TextStyle(
            height: 0.8,
            fontSize: 40,
          ),
        ),
        Text(
          alphabets,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
