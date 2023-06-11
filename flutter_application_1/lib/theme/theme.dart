import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 246, 246, 250),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color.fromARGB(255, 0, 0, 128), unselectedItemColor: Color.fromARGB(255, 17, 19, 49)),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.black, width: Get.width / 1.4),
    colorScheme: const ColorScheme.light(
        primary: Color.fromARGB(255, 0, 0, 128),
        secondary: Color.fromARGB(255, 247, 247, 247),
        onPrimary: Color.fromARGB(255, 17, 19, 49),
        onSecondary: Color.fromARGB(137, 198, 189, 189)),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
        titleLarge: TextStyle(fontFamily: 'RobotoSerif', fontSize: 26, color: Color.fromARGB(255, 0, 0, 128)),
        titleMedium: TextStyle(fontFamily: 'RobotoSerif', fontSize: 22, color: Color.fromARGB(255, 0, 0, 128)),
        titleSmall: TextStyle(fontFamily: 'RobotoSerif', fontSize: 20, color: Color.fromARGB(255, 47, 47, 48)),
        bodyLarge: TextStyle(fontFamily: 'RobotoSerif', fontSize: 18, color: Color.fromARGB(255, 54, 54, 55)),
        bodyMedium: TextStyle(fontFamily: 'RobotoSerif', fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
        headlineLarge: TextStyle(fontFamily: 'RobotoSerif', fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))));

ThemeData darkTheme = ThemeData();
