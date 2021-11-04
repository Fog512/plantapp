// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/compoents/recommend_plant.dart';
import 'package:plant_app/screens/home/compoents/title_with_more_btn.dart';

import 'feature_plant.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommend",
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMoreBtn(title: "Feature Plant", press: () {}),
          FeaturePlant(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
