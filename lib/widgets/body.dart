import 'package:flutter/material.dart';
import 'package:plantas/api/api_recomend_plants.dart';
import 'package:plantas/screens/home/widgets/Header.dart';
import 'package:plantas/screens/home/widgets/(Em%20constru%C3%A7%C3%A3o)loading_plant_card.dart';
import 'package:plantas/screens/home/widgets/featurePlants.dart';
import 'package:plantas/screens/home/widgets/listaDePlantasRecomendadas.dart';
import 'package:plantas/screens/home/widgets/recomendPlantCard.dart';
import 'package:plantas/screens/home/widgets/titleWithMoreBtn.dart';
import 'package:plantas/themes/constantes.dart';
import 'package:shimmer/shimmer.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).requestFocus(FocusNode());
    },
      child: SingleChildScrollView(
        child: Column(children: [
         const HeadWithSearchBox(),
          TitleWithMoreBtn(
            press: () {},
            text: 'Recomendado',
          ),
          const ListadePlantasRecomendadas(),
          TitleWithMoreBtn(
            press: () {},
            text: 'Notícias',
          ),
          const FeaturePlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ]),
      ),
    );
  }
}
