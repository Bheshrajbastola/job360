import 'package:flutter/material.dart';
import 'package:job360/common/show_my_message.dart';

class Mediaquery extends StatefulWidget {
  const Mediaquery({super.key});

  @override
  State<Mediaquery> createState() => _MediaqueryState();
}

class _MediaqueryState extends State<Mediaquery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Media Query View"),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.red),
                child: ElevatedButton(
                  onPressed: () {
                    showMySnackBar(context, 'hello world');
                  },
                  child: const Text('clik me'),
                )
                // height: MediaQuery.of(context).size.height * .60,

                ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
                // height: MediaQuery.of(context).size.height * .2,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.green),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Hello Wordl 2'),
                      duration: Duration(seconds: 2),
                    ));
                  },
                  child: const Text('clik me'),
                )),
          ),

          // Container(
          //   height: MediaQuery.of(context).size.height * 1 / 3,
          //   width: double.infinity,
          //   decoration:
          //       const BoxDecoration(color: Color.fromARGB(255, 71, 22, 204)),
          //   child: const Text("third container"),
          // )
        ],
      ),
    );
  }
}
