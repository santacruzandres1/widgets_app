import 'package:flutter/material.dart';

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
              (card) => _CardType2(elevation: card['elevation'], label: card['label'],)),
                ...cards.map(
              (card) => _CardType3(elevation: card['elevation'], label: card['label'],)),
                ...cards.map(
              (card) => _CardType4(elevation: card['elevation'], label: card['label'],)),
              
              const SizedBox(height: 25,)
        
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
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
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
class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        side:BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(10) 
        ),
      elevation:  elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
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
                child: Text('$label - outline'),
                )
          ],
        ),
        ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      shape: RoundedRectangleBorder(
        side:BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(10) 
        ),
      elevation:  elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
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
                child: Text('$label - Filled'),
                )
          ],
        ),
        ),
    );
  }
}


class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation
    });


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation:  elevation,
      child: Stack(
        children: [
          Image.network(
            'http://picsum.photos/id/${elevation.toInt() }/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
    
          Align(
            alignment: Alignment.topRight,
            child: Container(

              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
                color: colors.surface,
                ),
              child: _CustomButton(),
            ),  
            ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
      child: Material(
        color: colors.surfaceVariant,
        child: InkWell(
          onTap:() {
            
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
          child:  Icon(Icons.more_vert_outlined),
          ),
        ),
      ),
    ) ;
  }
}
