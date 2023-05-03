import 'package:flutter/material.dart';

class container extends StatefulWidget {
  const container({super.key});

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello world'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.topRight,
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
              // color: Colors.green,
              child: const Text('Hello World'),
            ),
          ),
        ));
  }
}
