import 'package:dailer_demo/widgets/keypad.dart';
import 'package:flutter/material.dart';

import '../widgets/calling_button.dart';

class CallerScreen extends StatelessWidget {
  const CallerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Keypad(),
          const CallingButton(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
