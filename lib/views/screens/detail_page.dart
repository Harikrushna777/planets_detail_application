import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets_detail_application/modal/planets_modals.dart';
import 'package:planets_detail_application/utils/route.dart';
import 'package:provider/provider.dart';

import '../../controller/json_provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
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
          title: Text(
            "Planets",
            style: GoogleFonts.robotoMono(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: -1.5,
            ),
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Consumer<JsonProvider>(
            builder: (context, pro, child) {
              return pro.allPlanets.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 120,
                        crossAxisSpacing: 20,
                        childAspectRatio: 2 / 3,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: pro.allPlanets.length,
                      itemBuilder: (context, index) {
                        PlanetModal data = pro.allPlanets[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              MyRoutes.planet_detail,
                              arguments: index,
                            );
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Position : ${data.position}",
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
                                      "Name : ${data.name}",
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
                                      "Velocity : ${data.velocity}",
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
                                      "Distance : ${data.distance}",
                                      style: GoogleFonts.robotoMono(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                        letterSpacing: -1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(0, -130),
                                child: RotationTransition(
                                  turns: Tween<double>(
                                          begin: 0.0, end: (pi * 2).toDouble())
                                      .animate(continueAnimation),
                                  child: Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(data.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Please Wait...",
                            style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: -1,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    );
            },
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
