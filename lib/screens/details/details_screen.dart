import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plantas/models/planta.dart';
import 'package:plantas/screens/details/widgets/body.dart';

class DetailsScreen extends StatefulWidget {
  Planta infoPlanta;
  DetailsScreen({super.key, required this.infoPlanta});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetails(infoPlanta: widget.infoPlanta),
    );
  }
}
