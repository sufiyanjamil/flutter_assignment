import 'package:flutter/material.dart';
import 'package:flutter_assignment_smit_ui/screens/home_screen.dart';
import 'package:flutter_assignment_smit_ui/screens/splashscreen.dart';
import 'package:flutter_assignment_smit_ui/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.Lighttheme,
      darkTheme: Apptheme.Darktheme,
      themeMode: ThemeMode.system,

      home: Splashscreen(),
    );
  }
}
