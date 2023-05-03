//crear una clase que extienda de statelessWidget

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {



  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Has presionado el botón', style: TextStyle(fontSize: 20),
            ),
            Text(
              '$counter', style: const TextStyle(fontSize: 120, fontWeight: FontWeight.w100),
            ),
            counter == 1 ? const Text('vez') : const Text('veces')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
