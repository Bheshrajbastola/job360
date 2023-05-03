import 'package:flutter/material.dart';

void main() {
  runApp(const radiobtn());
}

class radiobtn extends StatelessWidget {
  const radiobtn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button in Flutter"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "What is your gender?",
              style: TextStyle(fontSize: 18),
            ),
            const Divider(),
            RadioListTile(
              title: const Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
