
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';
import '../models/menu_options.dart';
import 'package:fl_components/screens/perfil_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.house_siding_sharp,
        name: 'Home Screen',
        
        screen: const HomeScreen()),
        
    MenuOptions(
        route: 'listtview1',
        icon: Icons.list_alt_rounded,
        name: 'Listview version 1',
        screen: const ListView1Screen()),
    MenuOptions(
        route: 'listtview2',
        icon: Icons.house_siding_sharp,
        name: 'Listview version 1',
        screen: const ListView2Screen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_membership_outlined,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.bus_alert,
        name: 'Alert Screen',
        screen: const AlertScreen()),
   MenuOptions(
    route: 'perfil',
    icon: Icons.person,
    name: 'Perfil Screen',
    screen: const PerfilScreen(), // Agrega 'const' aquí
),

   
     
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1':(BuildContext context) => const ListView1Screen(),
  //   'listview2':(BuildContext context) => const ListView2Screen(),
  //   'card':(BuildContext context) => const CardScreen(),
  //   'alert':(BuildContext context) => const AlertScreen(),
  //   'home':(BuildContext context) => const HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
