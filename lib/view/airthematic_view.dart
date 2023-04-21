import 'package:flutter/material.dart';

class AirthematicView extends StatefulWidget {
  const AirthematicView({super.key});

  @override
  State<AirthematicView> createState() => _AirthematicViewState();
}

class _AirthematicViewState extends State<AirthematicView> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
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
                  first = int.parse(value);
                },
                decoration: InputDecoration(
                  labelText: 'Enter First Num',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: InputDecoration(
                  labelText: 'Enter Second Num',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Sum is : $result',
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
