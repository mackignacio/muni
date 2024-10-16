import 'package:flutter/material.dart';

import '../constants/index.dart';

class PageStepper extends StatelessWidget {
  final int index;
  final int steps;

  const PageStepper({super.key, required this.index, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List<Widget>.generate(
          steps,
          (i) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: i == index ? Constants.red100 : Constants.red500,
            ),
            height: 8.0,
            width: 25,
          ),
        )
      ],
    );
  }
}
