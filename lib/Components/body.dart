import 'package:flutter/material.dart';

import 'components/feature_plant.dart';
import 'components/header_with_searchbar.dart';
import 'components/recomended_plants.dart';
import 'components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          const TitleWithMoreButton(),
          const RecomendedPlants(),
          const TitleWithMoreButton(),
          const Featureplant(),
        ],
      ),
    );
  }
}
