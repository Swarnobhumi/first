import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  AnimateGradient(
        primaryColors: const [
          Colors.blue,
          Colors.pinkAccent,
          Colors.white,
        ],
        secondaryColors: const [
          Colors.black,
          Colors.blueAccent,
          Colors.white,
        ],
        child: Container(),
      ),
    );
  }
}
