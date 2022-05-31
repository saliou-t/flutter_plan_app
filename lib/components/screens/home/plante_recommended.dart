import 'package:flutter/material.dart';
import 'package:planapp/components/screens/home/plante_scroller.dart';
import 'package:planapp/constants.dart';

class PlantRecommanded extends StatelessWidget {
  const PlantRecommanded({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.titleImage,
    required this.price,
    required this.contry, required this.press,
  }) : super(key: key);

  final Size size;
  final String titleImage, contry, price, imagePath;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding),
      width: size.width * 0.4, //ceci prend 40% du width global
      height: size.height * 0.6,
      child: Column(
        children: <Widget>[
          Image.asset(imagePath),
          PlanteScroll(press: press, titleImage: titleImage, contry: contry, price: price)
        ],
      ),
    );
  }
}
