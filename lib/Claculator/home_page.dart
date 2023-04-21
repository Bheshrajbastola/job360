import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int result = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.green,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: firstController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'First Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: secondController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Second Number'),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int a = int.parse(firstController.text);
                    int b = int.parse(secondController.text);
                    setState(() {
                      result = a + b;
                    });
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    int a = int.parse(firstController.text);
                    int b = int.parse(secondController.text);

                    setState(() {
                      result = a - b;
                    });
                  },
                  child: Text('Sub'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Mul'),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Result :$result')
          ],
        ),
      ),
    );
  }
}
