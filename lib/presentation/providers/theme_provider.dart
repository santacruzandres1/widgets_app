import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);


//UN simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);



//Un simple int

final selectedColorIndexProvider = StateProvider<int>((ref) => 0);