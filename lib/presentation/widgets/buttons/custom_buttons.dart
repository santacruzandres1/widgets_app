import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {


  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap:() {
            
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
          child:  Text('Custom Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    ) ;
  }
}