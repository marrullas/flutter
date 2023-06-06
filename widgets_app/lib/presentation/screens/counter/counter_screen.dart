import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/counter_provider.dart';
import '../../providers/theme_provider.dart';

class CounterScreeen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreeen({super.key});

  final counter = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counterClicked = ref.watch(counterProvider);
    final bool isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      actions: [
        IconButton(
          icon: isDark ? const Icon(Icons.wb_sunny) : const Icon(Icons.nightlight_round),
          onPressed: () {
            ref.read(themeProvider.notifier).state = !isDark;
          },
        )
      ],
      ),
      body: Center(
        child: Text('Valor: $counterClicked',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //ref.read(counterProvider.notifier).update((state) => state + 1); //metodo 1
          ref.read(counterProvider.notifier).state++; //metodo 2
        },
      ),
    );
  }
}
