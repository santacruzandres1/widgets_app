import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/settings/settings_screen.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    '/buttons_screen': (context) => const ButtonsScreen(),
    '/cards_screen': (context) => const CardsScreen(),
    '/settings_screen': (context) => const SettingsScreen(),
    // .. mas rutas de ser necesario
  };
}
