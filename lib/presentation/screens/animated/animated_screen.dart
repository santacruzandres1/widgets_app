import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreeen extends StatefulWidget {
    static const name = 'animated_screen';
  const AnimatedScreeen({super.key});

  @override
  State<AnimatedScreeen> createState() => _AnimatedScreeenState();
  
  

}

class _AnimatedScreeenState extends State<AnimatedScreeen> {
  

   double width = 100;
   double height = 100;
   Color  color = Colors.indigo;
   double borderRadius = 20;

  void randomShape(){
    final random = Random(); 
      width = random.nextInt(300)+120;
      height = random.nextInt(300)+120;
      color = Color.fromRGBO(random.nextInt(255)+0, random.nextInt(255)+0, random.nextInt(255)+0, 1);
          borderRadius = random.nextInt(100)+1;

      setState(() {});  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animated Container'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: AnimatedContainer(
            duration:const Duration(seconds: 2),
            width: width<=0?20:width,
            height: height<=0?20:height,
            decoration: BoxDecoration(color:color, borderRadius: BorderRadius.circular(borderRadius<0?0:borderRadius)),
            curve: Curves.elasticOut,
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          randomShape();
        },
        child: const Icon(Icons.play_arrow_rounded),
      
      ),
    );
  }
}