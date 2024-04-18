import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular Progress Indicators'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 20,),
          Text('Circular y Linear Controlado'),
          SizedBox(height: 10,),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 25), (value){
        return (value * 4)/1000; // jugar con los valores para controlar el flujo de carga
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
          return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.black38,),
            const SizedBox(width: 20,), // En este caso usamos with y no height porque estamos dentro de un Row
            Expanded(
              child: LinearProgressIndicator(value: progressValue,),
              )
      
      
          ],
      
          ),
        );

      },
    ); 

  }
}