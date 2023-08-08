import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // late AnimationController animationController;
  late AnimationController rotationController;
  late AnimationController rotationController2;

  @override
  void initState() {
    super.initState();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 120,
      ),
    )..repeat();
    rotationController2 = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 100,
      ),
    )..repeat();
    rotationController.repeat();
    rotationController2.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/space.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Planets Application",
            style: GoogleFonts.robotoMono(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Transform.translate(
              offset: const Offset(-100, -200),
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/sun1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController2),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(-1.4, 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mercury1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController2),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(0.5, -2.1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/venus1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(-3.2, -0.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/earth1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController2),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(-3.7, -1.9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mars1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(-5.15, 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/jupiter1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, -200),
              child: RotationTransition(
                turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                    .animate(rotationController2),
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment(-2, -6.1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/saturn1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            // Transform.translate(
            //   offset: Offset(-100, -200),
            //   child: RotationTransition(
            //     turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
            //         .animate(rotationController),
            //     child: Container(
            //       height: 300,
            //       width: 300,
            //       alignment: Alignment(0, -3.7),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.transparent,
            //       ),
            //       child: Container(
            //         height: 70,
            //         width: 70,
            //         decoration: const BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage(
            //               'assets/images/mars1.png',
            //             ),
            //             fit: BoxFit.cover,
            //           ),
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
