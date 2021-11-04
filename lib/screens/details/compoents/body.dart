import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/compoents/title_and_price.dart';

import 'icon_card.dart';
import 'image_icon_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIconCard(),
            TitleandPrice(
              title: "Anghelia",
              country: "Russia",
              price: 500,
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 2,
                    height: 84,
                    child: FlatButton(
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text("Description"),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
