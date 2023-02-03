import 'package:flutter/material.dart';
import 'package:plantas/screens/details/details_screen.dart';
import 'package:plantas/screens/home/home_screen.dart';
import 'package:plantas/themes/constantes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
         visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      home:  const HomeScreen(),
    );
  }
}
