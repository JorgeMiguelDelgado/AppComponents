import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //Inicio de pantalla de la aplicacion
      initialRoute: AppRoutes.initialroute,

      //Rutas o redireccionamiento de vistas
      routes: AppRoutes.getAppRoutes(),

      //Ruta en caso de no existir alguna ruta a pantalla
      onGenerateRoute: AppRoutes.onGenerateRoute,

      //Temas por defecto
      theme: AppTheme.darkTheme,
    );
  }
}
