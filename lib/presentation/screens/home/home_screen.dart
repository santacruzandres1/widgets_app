import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Widgets en flutter'),),
        body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
   appMenuItems;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
      final menuItem = appMenuItems[index];
      return _CustomListTile(menuItem: menuItem);
    },);
  }
}

class _CustomListTile extends StatelessWidget {
   const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: color.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: color.secondary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        //TODO: Navegar a otra pantalla
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ButtonsScreen()),
  );
      },
    );
  }
}