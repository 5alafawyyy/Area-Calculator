import 'package:area_calculator/screens/home_screen.dart';
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
          brightness: Brightness.dark,
          onPrimary: const Color(0xff009688),
          onSecondary: const Color(0xff7C4DFF),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
