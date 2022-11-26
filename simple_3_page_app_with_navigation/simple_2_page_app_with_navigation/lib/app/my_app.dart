import 'package:flutter/material.dart';
import 'package:simple_2_page_app_with_navigation/app/Home_page/view.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
