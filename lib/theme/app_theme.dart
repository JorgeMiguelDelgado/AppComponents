import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 25, 118, 210);
  static final ThemeData darkTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: Colors.green,
    //Personalizacion del appbar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //Estilo de botones TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    //Estilo del boton flotatnte
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 15,
    ),
    //ElevatedButton .. botones dentro de un alert
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.green,
      shape: const StadiumBorder(),
      elevation: 0,
    )),

    //scaffoldBackgroundColor: Colors.black,
  );
}
