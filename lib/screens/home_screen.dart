import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
          leading: const Icon(Icons.apple_outlined, color: Colors.grey),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(menuOption[index].name),
            leading: Icon(
              menuOption[index].icon,
              color: AppTheme.primary,
            ),
            onTap: () {
              /*final route = MaterialPageRoute(
                builder: (context) => const ListView2Screen(),
              );
              Navigator.push(context, route);*/
              Navigator.pushNamed(context, menuOption[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length,
        ));
  }
}
