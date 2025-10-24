import 'package:flutter/material.dart';

import 'demos/color_demo_screen.dart';
import 'demos/text_demo_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  void _onPageChanged(int index) => setState(() => _currentIndex = index);

  void _onNavigate(int index) => _pageController.jumpToPage(index);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Component Demos'),
    ),
    body: PageView(
      controller: _pageController,
      onPageChanged: _onPageChanged,
      children: const [
        TextDemoScreen(),
        ColorDemoScreen(),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onNavigate,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.text_fields),
          label: 'Text',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.color_lens),
          label: 'Color',
        ),
      ],
    ),
  );
}
