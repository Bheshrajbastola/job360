import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RichText(
        text: const TextSpan(
            text: 'My ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Name is Bhesh Raj',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontStyle: FontStyle.italic))
            ]),
      ),
    );
  }
}



// Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rich Text'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         color: Colors.blueGrey,
//         width: double.infinity,
//         // height: double.infinity,
//         child: const Text(
//           "My Name is Bhesh Raj Bastola",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.red,
//           ),
//         ),
//       ),
//     );