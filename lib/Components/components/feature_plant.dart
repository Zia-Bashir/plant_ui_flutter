import 'package:flutter/material.dart';

import 'feature_plants_card.dart';

class Featureplant extends StatelessWidget {
  const Featureplant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantsCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantsCard(
              image: "assets/images/bottom_img_2.png", press: () {}),
        ],
      ),
    );
  }
}
