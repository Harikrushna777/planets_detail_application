import 'package:flutter/material.dart';
import 'package:planets_detail_application/controller/json_provider.dart';
import 'package:planets_detail_application/utils/route.dart';
import 'package:planets_detail_application/views/screens/detail_page.dart';
import 'package:planets_detail_application/views/screens/homepage.dart';
import 'package:planets_detail_application/views/screens/planet_detail.dart';
import 'package:planets_detail_application/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => JsonProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splash_screen,
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.splash_screen: (context) => const SplashScreen(),
        MyRoutes.detail_page: (context) => const DetailPage(),
        MyRoutes.planet_detail: (context) => const PlanetDetails(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
