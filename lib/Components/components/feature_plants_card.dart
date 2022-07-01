import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class FeaturePlantsCard extends StatelessWidget {
  const FeaturePlantsCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
            left: kDefaultPadding,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
