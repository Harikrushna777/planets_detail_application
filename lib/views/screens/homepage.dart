import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController continueAnimation;
  late AnimationController rotationController;
  late AnimationController rotationController2;

  @override
  void initState() {
    super.initState();

    continueAnimation = AnimationController(
      vsync: this,
      duration: const Duration(
        minutes: 10,
      ),
    )..repeat();

    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 270,
      ),
    )..repeat();

    rotationController2 = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 200,
      ),
    )..repeat();

    rotationController.repeat();

    rotationController2.repeat();

    continueAnimation.repeat();
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
            style: GoogleFonts.robotoMono(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: -1.5,
            ),
            "Galaxy Planets",
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Sun
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.detail_page);
                    },
                    child: Transform.translate(
                      offset: const Offset(-100, -200),
                      child: RotationTransition(
                        turns:
                            Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                                .animate(continueAnimation),
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
                    ),
                  ),

                  // Mercury

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController2),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(-1.4, 0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),

                  // Venus

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController2),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(0.5, -2.1),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),

                  // Earth

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(-3.2, -0.5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),

                  // Mars

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController2),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(-3.7, -1.9),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),

                  // Jupiter

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(-5.2, 2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),

                  // Saturn

                  Transform.translate(
                    offset: const Offset(-100, -200),
                    child: RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(rotationController2),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: const Alignment(-2, -6.3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: RotationTransition(
                          turns: Tween<double>(
                                  begin: 0.0, end: (pi * 2).toDouble())
                              .animate(continueAnimation),
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
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 320,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "If you know more then you will press on know more button",
                style: GoogleFonts.robotoMono(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: -1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyRoutes.detail_page);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Know More",
                        style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
