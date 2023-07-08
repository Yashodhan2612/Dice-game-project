import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors:[Colors.deepPurple, Color.fromARGB(255, 193, 70, 234)],
        ),
      ),
    ),
  );
}
