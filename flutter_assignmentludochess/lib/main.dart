import 'package:flutter/material.dart';
import 'package:flutter_assignmentludochess/chess_board.dart';
import 'package:flutter_assignmentludochess/ludo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChessBoard(), debugShowCheckedModeBanner: false);
  }
}
