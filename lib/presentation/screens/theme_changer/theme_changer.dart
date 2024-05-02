import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  
  static const name = 'theme_changer_screen';
  

  const ThemeChangerScreen({super.key, ref});

  @override
  Widget build(BuildContext context, ref) {
      final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changer Theme'),
          actions: [
          IconButton(
          icon:isDarkMode? const Icon(Icons.dark_mode_outlined): const Icon(Icons.light_mode_outlined),  
          onPressed: (){
              // ref.read(isDarkModeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
          },)
        ],
        ),
        body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color>colors=ref.watch(colorListProvider);
    final int selectedColorIndex = ref.watch(themeNotifierProvider).selectedColor;
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
      return 
       RadioListTile(
        title: Text('Este Color', style: TextStyle(color: color),),
        subtitle: Text('${color.value}',),
        activeColor: color,
        value: index,
        groupValue: selectedColorIndex,
        onChanged: (value){
        ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
                },
        

      )
      ;
    },
      );
  }
}