import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;
}

class MyTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.black),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    tabBarTheme: TabBarTheme(
     labelColor: Colors.black
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade200,
    ),

  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.white),
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade800,
    ),
  );
}
