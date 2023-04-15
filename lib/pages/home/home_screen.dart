import 'package:flexflix/pages/home/netflix_bottom_bar.dart';
import 'package:flexflix/pages/principal/principal_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;

  void _changeCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: TabController(
              length: 4, vsync: this, initialIndex: _currentIndex),
          children: const [
            PrincipalScreen(),
            Center(child: Text('Novidades Rápidas')),
            Center(child: Text('Risadas')),
            Center(child: Text('Downloads'))
          ]),
      bottomNavigationBar: NetflixBottomBar(
        currentIndex: _currentIndex,
        changeIndex: _changeCurrentIndex,
      ),
    );
  }
}
