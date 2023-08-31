import 'package:dailer_demo/widgets/number_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Keypad extends StatelessWidget {
  Keypad({super.key});

  Map<int, String?> alpha = {
    1: "~",
    2: "ABC",
    3: "DEF",
    4: "GHI",
    5: "JKL",
    6: "MNO",
    7: "PQRS",
    8: "TUV",
    9: "WXYZ"
  };

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 5 / 4),
      itemCount: 12,
      itemBuilder: (context, index) {
        if (index == 9) return const NumberCard(number: '*', alphabets: "");
        if (index == 10) return const NumberCard(number: "0", alphabets: "+");
        if (index == 11) return const NumberCard(number: "#", alphabets: "");

        return NumberCard(number: "${index + 1}", alphabets: alpha[index + 1]!);
      },
    );
  }
}
