import 'package:flutter/material.dart';

import '../model/name_model.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  NameChanger _nameChanger = NameChanger();

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
          title: Text("Change Name App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _nameChanger.getName(),
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeName,
                child: Text("Change Name"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
