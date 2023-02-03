import 'package:flutter/material.dart';
import 'package:plantas/themes/constantes.dart';

class MoreBtn extends StatelessWidget {
   MoreBtn({
    Key? key, required this.press,
  }) : super(key: key);
final void  press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          backgroundColor:
              MaterialStateProperty.all<Color>(kPrimaryColor)),
      onPressed:(){press;} ,
      child: const Text(
        "Mais",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}