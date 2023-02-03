import 'package:flutter/material.dart';
import 'package:plantas/screens/home/widgets/moreButon.dart';
import 'package:plantas/screens/home/widgets/titleWithCustomUnderLine.dart';
import 'package:plantas/themes/constantes.dart';

class TitleWithMoreBtn extends StatelessWidget {
  TitleWithMoreBtn({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
   String text='';
   Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: text),
          Spacer(),
          MoreBtn(press:press)
        ],
      ),
    );
  }
}
