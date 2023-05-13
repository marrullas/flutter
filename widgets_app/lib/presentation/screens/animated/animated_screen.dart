

import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  static const String name = 'animated_screen';


  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  double _borderRadius = 10;
  Color _color = Colors.indigo;

  void changeShape(){
    final random = Random();

    _width = random.nextInt(300).toDouble() +120;
    _height = random.nextInt(300).toDouble() +120;
    _borderRadius = random.nextInt(10).toDouble() +20;
    _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut, //tipo de animacion
          width: _width, //ancho no puede ser null o negativo
          height: _height, //ancho no puede ser null o negativo
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius), //ancho no puede ser null, 0 o negativo
          ),
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}