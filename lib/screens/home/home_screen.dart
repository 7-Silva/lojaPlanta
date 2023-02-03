import 'package:flutter/material.dart';
import 'package:plantas/widgets/AppBar.dart';
import 'package:plantas/widgets/body.dart';
import 'package:plantas/widgets/my_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeBody(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
