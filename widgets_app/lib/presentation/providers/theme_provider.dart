

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);
//tema dark o light
final themeProvider = StateProvider<bool>((ref) => true);
//tema seleccionado
final selectedColorProvider = StateProvider<int>((ref) => 0);

//tema seleccionado objeto tipo AppTheme (custom)
final appThemeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);


//notifier o controlador
class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleTheme() {
    state = state.copyWith(isDark: !state.isDark);
  }

  void changeColor(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}