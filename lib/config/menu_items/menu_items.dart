//en este caso nosotros definimos los menu items, pero podrian ser dinamicos viniendo del back a traves de un json, de una peticion http, etc. 
import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String? routeName;


  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon,
     this.routeName
    });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios Botones en FLutter',
    link: '/buttons',
    icon: Icons.smart_toy_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicator',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbar y diálogos',
    subTitle: 'Indicadores de pantalla',
    link: '/snackbar',
    icon: Icons.info_outline, 
  ),
    MenuItems(
    title: 'Animated Container',
    subTitle: 'This is an animated container',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined, 
  ),
  MenuItems(
    title: 'UI Controls',
    subTitle: 'A group of control buttons',
    link: '/ui-controls',
    icon: Icons.drive_eta_sharp, 
  ),
    MenuItems(
    title: 'App tutorial',
    subTitle: 'A little introduction tutorial',
    link: '/app-tutorial',
    icon: Icons.accessibility_new_rounded, 
  ),
  MenuItems(
    title: 'Riverpod Counter',
    subTitle: 'Riverpod Introduction',
    link: '/screen-counter',
    icon: Icons.add, 
  ),
  MenuItems(
    title: 'Theme Changer',
    subTitle: 'Riverpod for to change the color of theme',
    link: '/theme-changer',
    icon: Icons.color_lens_rounded,
  ),
    MenuItems(
    title: 'Settings',
    subTitle: 'Configuraciones de Usuario',
    link: '/settings',
    icon: Icons.settings, 
  ),
];
