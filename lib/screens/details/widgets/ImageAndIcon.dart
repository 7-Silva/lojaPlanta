
import 'package:flutter/material.dart';
import 'package:plantas/screens/details/widgets/IconCard.dart';
import 'package:plantas/themes/constantes.dart';

class ImagemAndIcon extends StatelessWidget {
  String imagem;
  ImagemAndIcon({required this.imagem,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom:kDefaultPadding*3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Image.asset("assets/icons/back_arrow.png")),
                    ),
                    const Spacer(),
                    IconCard(icon: "assets/icons/sun.png",),
                    IconCard(icon: "assets/icons/icon_2.png",),
                    IconCard(icon: "assets/icons/icon_3.png",),
                    IconCard(icon: "assets/icons/icon_4.png",),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:kDefaultPadding*5.5),
                  child: Container(
                    height: size.height * 0.4,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.19),
                        ),
                      ],
                      image:DecorationImage(
                        
                        fit: BoxFit.contain,
                        image:Image.network(imagem).image/* AssetImage(
                          "$imagem",
                        ),*/
                      ),
                    ),
                  ),
                ),
              Spacer(),Container(color: Colors.black,)],
            )
          ],
        ),
      ),
    );
  }
}
