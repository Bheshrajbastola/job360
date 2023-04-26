import 'package:flutter/material.dart';

// Define a new class called NameChanger

class NameChanger {
  // Declare a private variable called _name and initialize it to "Bhesh Raj"

  String _name = "Bhesh Raj";
  // Declare a private list called _names and initialize it with a few names

  List<String> _names = ["Bhesh Raj", "Anjal Khadka", "Bikendra", "Sagar"];
  // Declare a private variable called _currentIndex and initialize it to 0

  int _currentIndex = 0;
  // Define a method called getName that returns the current value of _name

  String getName() {
    return _name;
  }
  // Define a method called changeName that updates the value of _name

  void changeName() {
    // Calculate the index of the next name in the list using the modulo operator to cycle back to the beginning if we reach the end

    _currentIndex = (_currentIndex + 1) % _names.length;
    // Update _name with the name at the current index
//(0 + 1) % 4 = 1

    _name = _names[_currentIndex];
  }
}
