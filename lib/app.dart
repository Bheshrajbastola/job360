import 'package:flutter/material.dart';
import 'package:job360/view/changeName.dart';
import 'package:job360/view/circle_view.dart';
import 'package:job360/view/dashboard.dart';
import 'package:job360/view/si_view.dart';
import 'view/airthematic_view.dart';

class App extends StatelessWidget {
  const App({super.key});
//Named routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/airthematicroute': (context) => const AirthematicView(),
        '/SIRoute': (context) => const SiView(),
        '/CircleRoute': (context) => const CircleArea(),
        '/NamedRoute': (context) => MyApp(),
      },
    );
  }
}
