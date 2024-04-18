import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

  const cards = <Map<String,dynamic>>[
    { 'elevation': 0.0, 'label': 'Elevation 0'},
    { 'elevation': 1.0, 'label': 'Elevation 1'},
    { 'elevation': 2.0, 'label': 'Elevation 2'},
    { 'elevation': 3.0, 'label': 'Elevation 3'},
    { 'elevation': 4.0, 'label': 'Elevation 4'},
  ];


class CustomCards extends StatelessWidget {
  const CustomCards({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map(
              (card) => _CardType1(elevation: card['elevation'], label: card['label'],)),
            ...cards.map(
              (card) => _CardType1(elevation: card['elevation'], label: card['label'],)),
        
          ],
        ),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:  elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed:() {}, 
                icon: const Icon(Icons.more_vert_outlined),
                ),  
              ),
               Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
                )
          ],
        ),
        ),
    );
  }
}