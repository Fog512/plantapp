import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detail_screen.dart';

import '../../../constants.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommenPlantCard(
            country: 'Russia',
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }));
            },
            price: 440,
            tittle: 'Samanatan',
          ),
          RecommenPlantCard(
            country: 'America',
            image: "assets/images/image_2.png",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }));
            },
            price: 640,
            tittle: 'Cataica',
          ),
          RecommenPlantCard(
            country: 'EngLand',
            image: "assets/images/image_3.png",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }));
            },
            price: 500,
            tittle: 'Agliemena',
          ),
        ],
      ),
    );
  }
}

class RecommenPlantCard extends StatelessWidget {
  const RecommenPlantCard({
    Key? key,
    required this.image,
    required this.tittle,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, tittle, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$tittle\n",
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
