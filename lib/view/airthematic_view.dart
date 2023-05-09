import 'package:flutter/material.dart';

import '../common/show_my_message.dart';
import '../model/airthematic.dart';

class AirthematicView extends StatefulWidget {
  const AirthematicView({super.key});

  @override
  State<AirthematicView> createState() => _AirthematicViewState();
}

class _AirthematicViewState extends State<AirthematicView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int result = 0;

  // var airthematic = ArithmeticView();

  @override
  void initState() {
    // TODO: implement initState
    firstController.text = '7';
    secondController.text = '8';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  late Arithmetic airthematicView;

  void add() {
    airthematicView = Arithmetic();
    setState(() {
      result = airthematicView.add(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
    showMySnackBar(context, 'Sum is $result');

    Navigator.pushNamed(context, '/outputRoute', arguments: result);
  }

  void sub() {
    airthematicView = Arithmetic();
    setState(() {
      result = airthematicView.sub(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
    showMySnackBar(context, 'Sum is $result', color: Colors.red);
  }

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter First Num',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Please eneter first no';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: 'Enter Second Num',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Please enter second no';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('Add'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        sub();
                      }
                    },
                    child: const Text('Sub'),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sum is : $result',
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../model/airthematic.dart';

// class AirthematicView extends StatefulWidget {
//   const AirthematicView({Key? key}) : super(key: key);

//   @override
//   State<AirthematicView> createState() => _AirthematicViewState();
// }

// class _AirthematicViewState extends State<AirthematicView> {
//   final firstController = TextEditingController();
//   final secondController = TextEditingController();

//   int result = 0;
//   Arithmetic airthematicView = Arithmetic();

//   late String selectedOperation = 'add';

//   @override
//   void initState() {
//     // TODO: implement initState
//     firstController.text = '7';
//     secondController.text = '8';
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     firstController.dispose();
//     secondController.dispose();
//     super.dispose();
//   }

//   void performOperation() {
//     setState(() {
//       switch (selectedOperation) {
//         case 'add':
//           result = airthematicView.add(
//             int.parse(firstController.text),
//             int.parse(secondController.text),
//           );
//           break;
//         case 'sub':
//           result = airthematicView.sub(
//             int.parse(firstController.text),
//             int.parse(secondController.text),
//           );
//           break;
//         case 'mul':
//           result = airthematicView.multiply(
//             int.parse(firstController.text),
//             int.parse(secondController.text),
//           );
//           break;
//         // case 'div':
//         //   result = airthematicView.division(
//         //     int.parse(firstController.text),
//         //     int.parse(secondController.text),
//         //   );
//         //   break;
//       }
//     });
//   }

//   final myKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello world'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Form(
//             key: myKey,
//             child: Column(
//               children: [
//                 const SizedBox(height: 8),
//                 TextFormField(
//                   controller: firstController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Enter First Num',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter first number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 TextFormField(
//                   controller: secondController,
//                   decoration: const InputDecoration(
//                     labelText: 'Enter Second Num',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter second number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 8),
//                 ListTile(
//                   title: const Text('Add'),
//                   leading: Radio<String>(
//                     value: 'add',
//                     groupValue: selectedOperation,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedOperation = value!;
//                       });
//                     },
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text('Subtract'),
//                   leading: Radio<String>(
//                     value: 'sub',
//                     groupValue: selectedOperation,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedOperation = value!;
//                       });
//                     },
//                   ),
//                 ),
               
//                     const SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                        if (myKey.currentState!.validate()) {
//                           calculate(operationName: selectedOperation);
//                         }
//                       },
//                       child: const Text('Calculate'),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Sum is : $result',
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontStyle: FontStyle.italic,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
            
//                 ),
//               )),
//         ),
//       );
    
    
//   }
// }



