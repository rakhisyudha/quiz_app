import 'package:adv_app/main_landing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 79, 19, 134),
                Color.fromARGB(255, 97, 29, 160),
              ],
            ),
          ),
          child: const MainLanding(),
        ),
      ),
    ),
  );
}
