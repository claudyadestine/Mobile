import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
      scaffoldBackgroundColor: Color(0xFFF3E5F5), // ungu pastel
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFFCE93D8),
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFBA68C8),
          foregroundColor: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Color(0xFF6A1B9A)),
        bodyMedium: TextStyle(color: Color(0xFF6A1B9A)),
      ),
    ),
    initialRoute: '/',
    routes: appRoutes,
  ));
}
