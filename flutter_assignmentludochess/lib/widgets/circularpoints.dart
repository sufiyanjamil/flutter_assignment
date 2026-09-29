import 'package:flutter/material.dart';

class Circularpoint extends StatelessWidget {
  final Color color;
  final double size;
  Circularpoint({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: color, radius: size);
  }
}
