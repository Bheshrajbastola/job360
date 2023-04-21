import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(
    const App(),
  );
}



// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AddTwoNumbers(),
//     ),
//   );
// }

// class AddTwoNumbers extends StatefulWidget {
//   const AddTwoNumbers({Key? key}) : super(key: key);

//   @override
//   _AddTwoNumbersState createState() => _AddTwoNumbersState();
// }

// class _AddTwoNumbersState extends State<AddTwoNumbers> {
//   final TextEditingController _firstNumberController = TextEditingController();
//   final TextEditingController _secondNumberController = TextEditingController();

//   int _sum = 0;

//   @override
//   void dispose() {
//     _firstNumberController.dispose();
//     _secondNumberController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add Two Numbers'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 8),
//               TextField(
//                 controller: _firstNumberController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter First Num',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 controller: _secondNumberController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Second Num',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       // Add the two numbers and update the sum
//                       _sum = int.parse(_firstNumberController.text) +
//                           int.parse(_secondNumberController.text);
//                     });
//                   },
//                   child: const Text('Add'),
//                   style: ButtonStyle(),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Sum is : $_sum',
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
