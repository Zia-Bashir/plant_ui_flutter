import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class PlantImageDetail extends StatelessWidget {
  const PlantImageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        image: const DecorationImage(
          image: AssetImage("assets/images/img_main.png"),
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
    );
  }
}
