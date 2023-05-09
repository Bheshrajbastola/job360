import 'package:flutter/material.dart';

class Radiobtn extends StatefulWidget {
  const Radiobtn({super.key});

  @override
  State<Radiobtn> createState() => _RadiobtnState();
}

class _RadiobtnState extends State<Radiobtn> {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: Container(
        child: Column(
          children: [
            const Text(
              "select gender",
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
              title: const Text('Female'),
              value: 'female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('clcik'),
            )
          ],
        ),
      ),
    );
  }
}
