import 'package:area_calculator/screens/container_layouts_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Area Calculator',
      theme: ThemeData(
        // primaryColor: const Color(0xff009688),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // brightness: Brightness.dark,
          primary: const Color(0xff00796B),
          secondary: const Color(0xff757575),
        ),
      ),
      home: const ContainerLayoutsScreen(),
    );
  }
}
