import 'package:flutter/material.dart';
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
      child: Column(
        children: <Widget>[
          Image.asset(imagePath),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, -10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.95))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: titleImage + "\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: contry, style: TextStyle(color: kPrimaryColor))
                    ]),
                  ),
                  Spacer(),
                  Text(
                    price,
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
