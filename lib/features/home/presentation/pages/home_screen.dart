import 'package:flutter/material.dart';
import '../widgets/appbar_home.dart';
import '../widgets/draggable.dart';
import '../widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarHomePage(),
        body: Stack(
          children: const [
            HomeContent(),
            DraggableSheet(),
          ],
        ));
  }
}
