import 'package:flexflix/pages/home/home_screen.dart';
import 'package:flexflix/themes/darktheme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MeuTema.netflixTheme(),
      home: const HomeScreen(),
    );
  }
}
