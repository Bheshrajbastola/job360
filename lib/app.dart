import 'package:flutter/material.dart';
import 'package:job360/view/changeName.dart';
import 'package:job360/view/circle_view.dart';
import 'package:job360/view/coloum_view.dart';
import 'package:job360/view/container-view.dart';
import 'package:job360/view/dashboard.dart';
import 'package:job360/view/display_student.dart';
import 'package:job360/view/load-image.dart';
import 'package:job360/view/output.dart';
import 'package:job360/view/radiobutton.dart';
import 'package:job360/view/richtext_view.dart';
import 'package:job360/view/si_view.dart';
import 'package:job360/view/student_view.dart';
import 'package:job360/view/ui.dart';

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
        '/SIRoute': (context) => const SimpleInterestView(),
        '/CircleRoute': (context) => const CircleArea(),
        '/NamedRoute': (context) => const Name(),
        '/TextRoute': (context) => const RichTextView(),
        '/ColoumnRoute': (context) => const ColoumView(),
        '/radioRoute': (context) => const radiobtn(),
        '/outputRoute': (context) => const Output(),
        '/containerRoute': (context) => const container(),
        '/imageRoute': (context) => const LoadImageView(),
        '/interfaceRoute': (context) => const Interface(),
        '/studentviewRoute': (context) => const StudentView(),
        '/displayRoute': (context) => const DisplayStudentView(),
      },
    );
  }
}
