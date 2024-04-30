import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey <ScaffoldState> scafoldKey;
  const SideMenu({super.key, required this.scafoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(


        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });

          final menuItem = appMenuItems[value];
          context.push(menuItem.link);
          widget.scafoldKey.currentState?.closeDrawer();

        },  


        selectedIndex: navDrawerIndex,
        children:  [
          Padding(
            padding:EdgeInsets.fromLTRB(28, hasNotch?10:20, 16, 10),
            child:  const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://picsum.photos/id/64/250/250')
                ),
                
                Text('Name or Title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                SizedBox(width: 10,),
                SizedBox(width: 10,),

              ],
            ),),
            ...appMenuItems
              .sublist(0,3)
              .map((e) => NavigationDrawerDestination(
            icon: Icon(e.icon),
            label: Text(e.title),
          ),),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Divider(),
          ),
            const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('More Options'),
          ),
          ...appMenuItems
          .sublist(3)
          .map((e) => NavigationDrawerDestination(
            icon: Icon(e.icon),
            label: Text(e.title),
          ))


        ]);
  }
}
