import 'package:flutter/material.dart';
import 'package:instagram_ui/pages.dart';
import 'package:instagram_ui/utiles/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      home: const HomePage(),
    );
  }
}


