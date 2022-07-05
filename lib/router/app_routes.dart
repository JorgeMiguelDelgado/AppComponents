import 'package:fl_components/screens/slider_screen.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialroute = 'home';

  static final menuOptions = <MenuOption>[
    /*MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    MenuOption(
        route: 'listview1',
        name: 'Lista tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'listview2',
        name: 'Lista tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.line_style_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
      route: 'Circle avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.play_circle_outline_rounded,
      name: 'Animations',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_rounded,
      name: 'Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slow_motion_video_rounded,
      name: 'Sliders and Check',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'LisViewBuilder',
      icon: Icons.build_circle_outlined,
      name: 'InifiniteScroll & Pull to refresh',
      screen: const ListViewBuilderScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
