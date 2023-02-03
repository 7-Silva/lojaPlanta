import 'package:flutter/material.dart';
import 'package:plantas/themes/constantes.dart';

class FeaturePlantCard extends StatelessWidget {
  FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press;
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding, bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
