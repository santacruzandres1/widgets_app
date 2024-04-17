//en este caso nosotros definimos los menu items, pero podrian ser dinamicos viniendo del back a traves de un json, de una peticion http, etc. 
import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
    });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones', 
    subTitle: 'Varios Botones en FLutter', 
    link: '/buttons', 
    icon: Icons.smart_toy_outlined),
      MenuItems(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/card', 
    icon: Icons.credit_card),
];