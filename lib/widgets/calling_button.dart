
import 'package:flutter/material.dart';

class CallingButton extends StatelessWidget {
  const CallingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        minimumSize: const Size(80, 80),
        backgroundColor: Colors.green,
      ),
      child: const Icon(
        Icons.phone,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
