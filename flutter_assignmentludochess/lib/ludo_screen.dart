// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_assignmentludochess/widgets/circularpoints.dart';
import 'package:flutter_assignmentludochess/widgets/pathcells.dart'
    show Pathcell;

class LudoPage extends StatelessWidget {
  const LudoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "LUDO",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.logout_outlined, color: Colors.black),
          ),
        ],
      ),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                // =====================================================
                // LUDO BOARD
                // =====================================================
                Expanded(
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,

                      // Your original board size
                      child: SizedBox(
                        width: 300,
                        height: 356,

                        child: Column(
                          children: [
                            // =================================================
                            // TOP ROW
                            // =================================================
                            SizedBox(
                              height: 133,
                              child: Row(
                                children: [
                                  // ================= RED HOME =================
                                  Container(
                                    height: 133,
                                    width: 100,
                                    color: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          right: 5,
                                                          top: 7,
                                                          left: 3,
                                                        ),
                                                    child: Circularpoint(
                                                      color: Colors.red,
                                                      size: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 7,
                                                          left: 5,
                                                        ),
                                                    child: Circularpoint(
                                                      color: Colors.red,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        right: 5,
                                                        top: 7,
                                                        left: 3,
                                                      ),
                                                  child: Circularpoint(
                                                    color: Colors.red,
                                                    size: 12,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        top: 7,
                                                        left: 5,
                                                      ),
                                                  child: Circularpoint(
                                                    color: Colors.red,
                                                    size: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  // ================= TOP BLUE PATH =================
                                  SizedBox(
                                    height: 133,
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(
                                              color: Colors.white,
                                              icon: Icons.star_border,
                                            ),
                                            Pathcell(color: Colors.blue),
                                            Pathcell(color: Colors.blue),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.blue),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.blue),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.blue),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.blue),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  // ================= BLUE HOME =================
                                  Container(
                                    height: 133,
                                    width: 100,
                                    color: Colors.blue,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 5,
                                                      top: 7,
                                                      left: 3,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.blue,
                                                      size: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 5,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.blue,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: 5,
                                                    top: 7,
                                                    left: 3,
                                                  ),
                                                  child: Circularpoint(
                                                    color: Colors.blue,
                                                    size: 12,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 7,
                                                    left: 5,
                                                  ),
                                                  child: Circularpoint(
                                                    color: Colors.blue,
                                                    size: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // =================================================
                            // MIDDLE ROW
                            // =================================================
                            SizedBox(
                              height: 90,
                              child: Row(
                                children: [
                                  // ================= RED PATH =================
                                  SizedBox(
                                    height: 90,
                                    width: 104,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                              icon: Icons.star_border,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.red,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  // ================= CENTER =================
                                  Container(
                                    height: 90,
                                    width: 91,
                                    color: Colors.pink,
                                    child: const Center(
                                      child: Icon(
                                        Icons.star_border_sharp,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                  ),

                                  // ================= GREEN PATH =================
                                  SizedBox(
                                    height: 90,
                                    width: 105,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                            Pathcell(
                                              height: 30,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                              icon: Icons.star_border,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                            Pathcell(
                                              height: 29,
                                              width: 17.2,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // =================================================
                            // BOTTOM ROW
                            // =================================================
                            SizedBox(
                              height: 133,
                              child: Row(
                                children: [
                                  // ================= YELLOW HOME =================
                                  Container(
                                    height: 133,
                                    width: 100,
                                    color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 5,
                                                      top: 7,
                                                      left: 3,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.yellow,
                                                      size: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 5,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.yellow,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: 5,
                                                    top: 7,
                                                    left: 3,
                                                  ),
                                                  child: Circularpoint(
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 7,
                                                    left: 5,
                                                  ),
                                                  child: Circularpoint(
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  // ================= YELLOW PATH =================
                                  SizedBox(
                                    height: 133,
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(color: Colors.yellow),
                                            Pathcell(
                                              color: Colors.white,
                                              icon: Icons.star_border,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.white),
                                            Pathcell(color: Colors.white),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  // ================= GREEN HOME =================
                                  Container(
                                    height: 133,
                                    width: 100,
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18),
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 5,
                                                      top: 7,
                                                      left: 3,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.green,
                                                      size: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 7,
                                                      left: 5,
                                                    ),
                                                    child: Circularpoint(
                                                      color: Colors.green,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        right: 5,
                                                        top: 7,
                                                        left: 3,
                                                      ),
                                                  child: Circularpoint(
                                                    color: Colors.green,
                                                    size: 12,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        top: 7,
                                                        left: 5,
                                                      ),
                                                  child: Circularpoint(
                                                    color: Colors.green,
                                                    size: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // =====================================================
                // PLAYER SECTION
                // =====================================================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      // PLAYER 1
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Player 1",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // DICE / IMAGE
                      Container(
                        height: 65,
                        width: 65,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 6),
                        ),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpz-jI7OQ1zsRoA1V0oXsprRD2ygjAB7qfr7HHUh7ENWnyD8n5l1KLXZs&s=10",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.casino, size: 35);
                          },
                        ),
                      ),

                      // PLAYER 2
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Player 2",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
