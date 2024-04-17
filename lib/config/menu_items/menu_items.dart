//en este caso nosotros definimos los menu items, pero podrian ser dinamicos viniendo del back a traves de un json, de una peticion http, etc. 
import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String routeName;


  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon,
    required this.routeName
    });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios Botones en FLutter',
    link: '/buttons',
    icon: Icons.smart_toy_outlined,
    routeName: '/buttons_screen',
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
    routeName: '/cards_screen', 
  ),
  MenuItems(
    title: 'Settings',
    subTitle: 'Configuraciones de Usuario',
    link: '/settings',
    icon: Icons.credit_card,
    routeName: '/settings_screen', 
  ),
];