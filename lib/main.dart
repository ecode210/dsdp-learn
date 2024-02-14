import 'package:demo/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF59B89D),
          primary: const Color(0xFF59B89D),
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
