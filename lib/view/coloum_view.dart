import 'package:flutter/material.dart';

class ColoumView extends StatelessWidget {
  const ColoumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Area of CIrcle"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.orange,
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color.fromARGB(255, 113, 238, 29),
                  ),
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Color.fromARGB(255, 27, 130, 138),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}


  // body: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: const [
  //         Icon(
  //           Icons.star,
  //           size: 50,
  //           color: Colors.red,
  //         ),
  //         Icon(
  //           Icons.star,
  //           size: 25,
  //           color: Colors.green,
  //         ),
  //         Spacer(),
  //         Icon(
  //           Icons.star,
  //           size: 50,
  //           color: Colors.blue,
  //         ),
  //       ],
  //     ),
  //   );
