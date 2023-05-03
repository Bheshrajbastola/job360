import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  const Output({super.key});

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  int? result;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    result = ModalRoute.of(context)!.settings.arguments as int?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello world'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Text('result is : ${result.toString()}'),
        ));
  }
}
