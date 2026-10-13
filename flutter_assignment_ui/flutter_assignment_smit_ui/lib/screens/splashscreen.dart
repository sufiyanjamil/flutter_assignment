import 'package:flutter/material.dart';
import 'package:flutter_assignment_smit_ui/screens/home_screen.dart';
import 'package:flutter_assignment_smit_ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    final isDarkmode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: isDarkmode
                ? Image.asset("assets/images/icon.png")
                : Image.asset("assets/images/icon.png"),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Vinora",
              style: GoogleFonts.playwriteAr(
                color: Theme.of(context).cardColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
