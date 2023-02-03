import 'package:flutter/material.dart';
import 'package:plantas/themes/constantes.dart';
AppBar buildAppBar() {
    return AppBar(backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/icons/menu.png"),
        onPressed: () {},
      ),
    );
  }

