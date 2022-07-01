import 'package:flutter/material.dart';
import 'package:plant_app_ui/Details/components/details_screen.dart';

import 'recomended_plants_card.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlantCard(
            image: "assets/images/image_1.png",
            title: "samantha",
            country: "russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
          ),
          RecomendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Angilica",
            country: "Pakistan",
            price: 400,
            press: () {},
          ),
          RecomendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Chambili",
            country: "Bangladesh",
            price: 400,
            press: () {},
          ),
        ],
      ),
    );
  }
}
