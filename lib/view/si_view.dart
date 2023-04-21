import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  double principle = 0;
  double time = 0;
  double rate = 0;
  double SI = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SI'),
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
                    principle = double.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Princpla',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  onChanged: (value) {
                    time = double.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Time',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  onChanged: (value) {
                    rate = double.parse(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Rate',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        SI = principle * time * rate / 100;
                      });
                    },
                    child: Text('Calculate'),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Simple Intrest is $SI',
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
