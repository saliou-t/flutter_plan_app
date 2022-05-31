
import 'package:flutter/material.dart';
import 'package:planapp/constants.dart';

class PlanteScroll extends StatelessWidget {
  const PlanteScroll({
    Key? key,
    required this.press,
    required this.titleImage,
    required this.contry,
    required this.price,
  }) : super(key: key);

  final Function press;
  final String titleImage;
  final String contry;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
