import 'package:flutter/material.dart';

import '../model/name_model.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  final NameChanger _nameChanger = NameChanger();

  void _changeName() {
    setState(() {
      _nameChanger.changeName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Change Name App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _nameChanger.getName(),
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeName,
                child: const Text("Change Name"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
