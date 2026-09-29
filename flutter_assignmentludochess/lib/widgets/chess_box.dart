import 'package:flutter/material.dart';

class ChessBox extends StatelessWidget {
  final bool isWhite;

  const ChessBox({super.key, required this.isWhite});

  @override
  Widget build(BuildContext context) {
    return Container(color: isWhite ? Colors.white : Colors.black);
  }
}
