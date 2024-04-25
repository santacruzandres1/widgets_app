import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
void snackbar (BuildContext context){
ScaffoldMessenger.of(context).clearSnackBars();
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: const Text('data'),
  duration: const Duration(seconds: 1),
  action: SnackBarAction(label: 'OK', onPressed: (){}),
  )  );
}
void openDialog (BuildContext context){
  final colors = Theme.of(context).colorScheme;
  showDialog( 
    barrierDismissible: false,
  context: context, 
  builder: (context)=> AlertDialog(
    title: const Text('Are you sure?'),
    content: const Text('Veniam magna voluptate nostrud tempor reprehenderit proident velit dolor id elit fugiat.Mollit labore cillum proident est reprehenderit qui sunt ipsum anim sunt consectetur irure magna.'),
    surfaceTintColor:colors.error ,
    actions: [
      FilledButton(
        onPressed: ()=>context.pop(),
         style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red.shade900),), 
        child: const Text('Cancel'),
        ),
      TextButton(onPressed: ()=>context.pop(), child:Text('Save Preferencies', style: TextStyle(color: colors.error),)),
    ],
  ),
  );

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed:(){showAboutDialog(
              context: context,
              children: [
                const Text('Sint adipisicing magna magna laborum in commodo esse est ullamco excepteur culpa.')
              ]
              );}, child: const Text('Licences used'),),
            const SizedBox(height: 20,),
            FilledButton.tonal
            (onPressed:()=> openDialog(context),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red.shade600)),//otra manera de llamar  
            child: const Text('Show Dialog', style: TextStyle(color: Colors.white),),
            ),
            ],
        ) ,),
      floatingActionButton:  FloatingActionButton.extended(
            label: const Text('Mostrar un Snackbar'),
            icon: const Icon(Icons.remove_red_eye_outlined),
            onPressed:(){
                snackbar(context);
            },
          
            ),
    );
  }
}