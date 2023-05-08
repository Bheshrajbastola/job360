import 'package:flutter/material.dart';

class Rowcoloumn extends StatefulWidget {
  const Rowcoloumn({super.key});

  @override
  State<Rowcoloumn> createState() => _RowcoloumnState();
}

class _RowcoloumnState extends State<Rowcoloumn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: height * .15,
              color: Colors.teal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    width: width / 3,
                    height: height,
                    child: const Text('container 1'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    width: width / 3,
                    height: height,
                    child: const Text('container 1'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    width: width / 3,
                    height: height,
                    child: const Text('container 1'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueGrey,
              child: const Text('container 1'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.yellow,
              child: const Text('conatienr 2'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 21, 212, 79),
              child: const Text('container 3'),
            ),
          )
        ],
      ),
    );
  }
}
