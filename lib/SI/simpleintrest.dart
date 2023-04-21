import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SI'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Princpla',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Time',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Rate',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Calculate'),
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Simple Intrest is :',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
        ),
      ),
    ),
  );
}

// import 'package:flutter/material.dart';



// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SimpleIntrest(),
//     ),
//   );
// }

// class SimpleIntrest extends StatefulWidget {
//   @override
//   _SimpleIntrestState createState() => _SimpleIntrestState();
// }

// class _SimpleIntrestState extends State<SimpleIntrest> {
//   double principal = 0;
//   double rate = 0;
//   double time = 0;
//   double simpleInterest = 0;

//   void calculate() {
//     setState(() {
//       simpleInterest = (principal * rate * time) / 100;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('SI'),
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
//                 decoration: InputDecoration(
//                   labelText: 'Enter Principal',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   principal = double.parse(value);
//                 },
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter Time',
//                   border: OutlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   time = double.parse(value);
//                 },
//               ),
//               const SizedBox(height: 8),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter Rate',
//                   border: OutlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   rate = double.parse(value);
//                 },
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: calculate,
//                   child: const Text('Calculate'),
//                   style: ElevatedButton.styleFrom(
//                     textStyle: TextStyle(
//                       fontSize: 20,
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Simple Interest is : $simpleInterest',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
