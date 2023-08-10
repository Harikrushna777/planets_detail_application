import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_detail_application/controller/json_provider.dart';
import 'package:provider/provider.dart';

class PlanetDetails extends StatefulWidget {
  const PlanetDetails({super.key});

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController continueAnimation;

  @override
  void initState() {
    super.initState();
    continueAnimation = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 100,
      ),
    )..repeat();
    continueAnimation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/space.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<JsonProvider>(
            builder: (context, provider, child) => Text(
              provider.allPlanets[index].name,
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: -1.5,
              ),
            ),
          ),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Consumer<JsonProvider>(builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotationTransition(
                      turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                          .animate(continueAnimation),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage(provider.allPlanets[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "Position       :            ${provider.allPlanets[index].position}",
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name           :        ${provider.allPlanets[index].name}",
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Velocity       :           ${provider.allPlanets[index].velocity}",
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Distance       :          ${provider.allPlanets[index].distance}",
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "-:  Description  :-",
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              provider.allPlanets[index].description,
                              style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: -1,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
