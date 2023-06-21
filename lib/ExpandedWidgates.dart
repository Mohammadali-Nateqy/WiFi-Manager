import 'package:flutter/material.dart';

class MyEpandedWidget extends StatelessWidget {
  MyEpandedWidget({required this.color, this.child});

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        margin: const EdgeInsets.all(5),
        child: child,
      ),
    );
  }
}
