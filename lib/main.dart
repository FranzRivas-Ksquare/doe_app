import 'package:flutter/material.dart';
import 'package:doe/theme.dart';
import 'package:doe/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doe',
      onGenerateRoute: onGenerateRoute,
      theme: DoeTheme.theme,
      // home: Landing(), TODO: Find a way to use initRoute
    );
  }
}
