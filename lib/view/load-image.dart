import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('View Image'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                for (int i = 0; i < 5; i++)
                  const CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("asset/images/images.jpg"),
                  ),

                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToiSh2TqVRxYOpXYfXhVX0IDy2k4bUgUV7Dw&usqp=CAU')

                // Image.asset("assets/images/pic1.webp"),
                // const Text("Pic 2")
              ],
            ),
          ),
        ));
  }
}




  git config --global user.email "swikarbaastola@gmail.com"
  git config --global user.name "Bhesh Raj Bastola"