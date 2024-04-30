import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  
  static const name = 'theme_changer_screen';
  

  const ThemeChangerScreen({super.key, ref});

  @override
  Widget build(BuildContext context, ref) {
      final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changer Theme'),
          actions: [
          IconButton(onPressed: (){
          ref.read(isDarkModeProvider.notifier).update((state) => !state);
          }, icon: isDarkMode? const Icon(Icons.dark_mode_outlined): const Icon(Icons.light_mode_outlined),)
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
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
      return 
       RadioListTile(
        title: Text('Este Color', style: TextStyle(color: color),),
        subtitle: Text('${color.value}',),
        value: index,
        groupValue:0 ,
        onChanged: (value){
          //TODO: notificar
        },
        

      )
      ;
    },
      );
  }
}