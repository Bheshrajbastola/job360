import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/areaofcircle.dart';

class CircleArea extends StatefulWidget {
  const CircleArea({super.key});

  @override
  State<CircleArea> createState() => _CircleAreaState();
}

class _CircleAreaState extends State<CircleArea> {
  double radius = 0;
  double result = 0;

  late Area areaView;

  void areaofCircle() {
    areaView = Area(radius);
    setState(() {
      result = areaView.areaofCircle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of CIrcle"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: InputDecoration(
                  labelText: 'Enter the Area',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    areaofCircle();
                  },
                  child: const Text('Claculate'),
                ),
              ),
              Text(
                'Area of Circel is : $result',
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
