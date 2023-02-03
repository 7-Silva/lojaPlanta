import 'package:flutter/material.dart';
import 'package:plantas/models/planta.dart';
import 'package:plantas/screens/details/widgets/ImageAndIcon.dart';
import 'package:plantas/screens/details/widgets/nomeEpreco.dart';
import 'package:plantas/themes/constantes.dart';

class BodyDetails extends StatelessWidget {
  Planta infoPlanta;
  BodyDetails({super.key, required this.infoPlanta});

  @override
  Widget build(BuildContext context) {
    var image = infoPlanta.image;
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImagemAndIcon(imagem:image!),
          NomeEPreco(
            country: '${infoPlanta.country}',
            price: infoPlanta.price!,
            title:'${infoPlanta.title}',
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor)),
                  onPressed: () {},
                  child: const Text(
                    'Compre Agora',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Descrição',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
