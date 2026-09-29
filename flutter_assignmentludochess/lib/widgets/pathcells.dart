import 'package:flutter/material.dart';

class Pathcell extends StatelessWidget {
  final Color color;
  final IconData? icon;
  final double height;
  final double width;
  const Pathcell({
    super.key,
    required this.color,
    this.icon,
    this.height = 22,
    this.width = 33.3,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: icon != null
          ? Center(child: Icon(icon, color: Colors.black, size: 16))
          : null,
    );
  }
}
