import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/widgets/buttons/custom_buttons.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).pop(); // metodo navigator
            context.pop(); //A traves de go router
          },
          child: const Icon(Icons.arrow_back),
      ),
      );
  }
}

class _ButtonsView extends StatelessWidget {
  get label => null;


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated Button'), ),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disable'), ),
             ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.alarm), label: const Text('Alarm Icon Button Elevated')),
             FilledButton(onPressed: (){}, child: const Text('Fielled')),
             FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.accessibility), label: const Text('Accesibility'),),
             OutlinedButton(onPressed: (){}, child: const Text('Outline')),
             OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.add_home_work_rounded), label: const Text('Outline')),
             TextButton(onPressed: (){}, child:const Text('Text Button')),
             TextButton.icon(onPressed: (){}, label:const Text('Text Button'), icon: const Icon(Icons.window_outlined),),
             //TODO: Cusstom Buttom
              IconButton(onPressed: (){}, icon: const Icon(Icons.airplanemode_active_rounded)),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.airplanemode_active_rounded),
                  style: ButtonStyle( 
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white), 
                    ),
                 ),
                 //Custom Buttons
                 const CustomButton()
          ],
        ),
      ),
    );
  }
}