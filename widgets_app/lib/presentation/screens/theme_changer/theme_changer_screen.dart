import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const String name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bool isDark = ref.watch(appThemeNotifierProvider).isDark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
              actions: [
        IconButton(
          icon: isDark ? const Icon(Icons.wb_sunny) : const Icon(Icons.nightlight_round),
          onPressed: () {
            // ref.read(themeProvider.notifier)
            // .update((state) => !state);
            ref.read(appThemeNotifierProvider.notifier).toggleTheme();
          },
        )
      ],
      ),
      body: const _ThemeChangerView()
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Color> colorList = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor = ref.watch(appThemeNotifierProvider).selectedColor;
    
    

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
      
        final color = colorList[index];

        return RadioListTile(
          value: index, 
          groupValue: selectedColor, 
        title: Text('Color', style: TextStyle(color: color),
        
        ),
        activeColor: color,
        //selected: colorList[selectedColor] == color,
        onChanged: (value) {
          //ref.read(selectedColorProvider.notifier).state = index;
          ref.read(appThemeNotifierProvider.notifier).changeColor(index);
        }, 
        );
    }
    );
  }
}