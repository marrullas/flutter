

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);
//tema dark o light
final themeProvider = StateProvider<bool>((ref) => true);
//tema seleccionado
final selectedColorProvider = StateProvider<int>((ref) => 0);