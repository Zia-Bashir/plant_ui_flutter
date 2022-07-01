// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'icon_card.dart';
import 'plant_image_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding * 3),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: kDefaultPadding, right: kDefaultPadding),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/back_arrow.svg"),
                            ),
                          ),
                        ),
                        const IconCard(
                          image: "assets/icons/sun.svg",
                        ),
                        const IconCard(
                          image: "assets/icons/icon_2.svg",
                        ),
                        const IconCard(
                          image: "assets/icons/icon_3.svg",
                        ),
                        const IconCard(
                          image: "assets/icons/icon_4.svg",
                        ),
                      ],
                    ),
                  ),
                ),
                const PlantImageDetail()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Angelica\n".toUpperCase(),
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Russia".toUpperCase(),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: kPrimaryColor, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "\$440",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 73,
                child: FlatButton(
                  onPressed: () {},
                  color: kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 73,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: const Text(
                    "Description",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
