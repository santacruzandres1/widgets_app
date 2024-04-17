import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/settings/settings_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  // definir las rutas aca (asumiendo que tenemos un archivo o clase separada para las rutas) 
  final Map<String, WidgetBuilder> routes = {
    '/buttons_screen': (context) => const ButtonsScreen(),
    '/cards_screen':(context) => const CardsScreen(),
    '/settings_screen':(context) => const SettingsScreen(),
    // añade mas rutas para otras pantallas basadas en la lista de appMenuItems
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Widgets en flutter'),
      ),
      body: _HomeView(appMenuItems: appMenuItems, routes: routes),  // pasa elementosMenu y rutas
    );
  }
}

class _HomeView extends StatelessWidget {
  final List<MenuItems> appMenuItems;
  final Map<String, WidgetBuilder> routes; // recibe las rutas de HomeScreen

  const _HomeView({required this.appMenuItems, required this.routes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem, routes: routes); // pasa las rutas  _CustomListTile
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItems menuItem;
  final Map<String, WidgetBuilder> routes; // recibe rutas de _HomeView

  const _CustomListTile({
    required this.menuItem,
    required this.routes,
  });

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
        if (routes.containsKey(routeName)) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routes[routeName]!(context)),
          );
        } else {
          // se podria implementar el manejo casos donde nombreRuta es inválido o falta (ej., imprime un mensaje)
        }
      },
    );
  }
}
