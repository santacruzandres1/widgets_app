import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);


//UN simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Un simple int
final selectedColorIndexProvider = StateProvider<int>((ref) => 0);








//Un objeto de tipoo Apptheme(custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifierController, AppTheme>(
  
  (ref) => ThemeNotifierController()
  
  ); //Basicamente al definir decimos que el que controla es el ThemeNotifierController y el estado es una instancia de AppTheme

class ThemeNotifierController extends StateNotifier<AppTheme> {
  //STATE =  Estado = new AppTheme()
  ThemeNotifierController():super(AppTheme());// esto es basicamente decirle necesito que crees la instancia de mi AppTHeme, son sus valores por defautl
  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);

  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);

  }

}