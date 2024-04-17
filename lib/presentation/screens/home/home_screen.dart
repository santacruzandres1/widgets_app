
import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';
import 'package:widgets_app/config/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Widgets en flutter'),
      ),
      body: const _HomeView(appMenuItems: appMenuItems),
    );
  }
}

class _HomeView extends StatelessWidget {
  final List<MenuItems> appMenuItems;

  const _HomeView({required this.appMenuItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItems menuItem;

  const _CustomListTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: color.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: color.secondary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        final routeName = menuItem.routeName;

        if (AppRouter.routes.containsKey(routeName)) {
          Navigator.pushNamed(context, routeName);
        } else {
          // Aca podria estar el manejo de errores(rutas invalidas)
        }
      },
    );
  }
}