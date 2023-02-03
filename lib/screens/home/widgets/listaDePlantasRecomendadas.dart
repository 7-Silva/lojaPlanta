
import 'package:flutter/material.dart';
import 'package:plantas/api/api_recomend_plants.dart';
import 'package:plantas/screens/details/details_screen.dart';
import 'package:plantas/screens/home/widgets/recomendPlantCard.dart';

class ListadePlantasRecomendadas extends StatefulWidget {
  const ListadePlantasRecomendadas({
    Key? key,
  }) : super(key: key);

  @override
  State<ListadePlantasRecomendadas> createState() =>
      _ListadePlantasRecomendadasState();
}

class _ListadePlantasRecomendadasState
    extends State<ListadePlantasRecomendadas> {
  late Future<dynamic> _getAllRecomends;
  @override
  void initState() {
    super.initState();
    _getAllRecomends = getAllRecomend();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getAllRecomends,
      builder: (context, snapshot) {
        return  (snapshot.hasData) ? SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data?.length,
            itemBuilder: (BuildContext context, int index) {
              return
              RecomendPlantCard(
                country: snapshot.data!.elementAt(index).country,
                image: snapshot.data!.elementAt(index).image,
                price: snapshot.data!.elementAt(index).price,
                title: snapshot.data!.elementAt(index).title,
                press: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsScreen(infoPlanta:snapshot.data!.elementAt(index)))));},
              );
            },
          ),
        ):CircularProgressIndicator();
      },
    );
    
   /* 
   AQUI TA FUNCIONANDO!!!!!!!!!!!!!!!
   
   SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
              children: [
                RecomendPlantCard(
                  country: "Russia",
                  image: "assets/images/image_1.png",
                  price: 440,
                  title: "Samantha",press: (){ Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsScreen())));},
                  ),RecomendPlantCard(
                  country: "Russia",
                  image: "assets/images/image_2.png",
                  price: 440,
                  title: "Samantha",press: (){ Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsScreen())));},
                  ),RecomendPlantCard(
                  country: "Russia",
                  image: "assets/images/image_3.png",
                  price: 440,
                  title: "Samantha",press: (){ Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsScreen())));},
                  ),]),
    );*/
    
}}