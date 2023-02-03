
import 'package:flutter/material.dart';
import 'package:plantas/themes/constantes.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/flower.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/heart-icon.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/user-icon.png"),
          ),
        ],
      ),
    );
  }
}
