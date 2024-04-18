import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/custom_cards.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCards();
  }
}