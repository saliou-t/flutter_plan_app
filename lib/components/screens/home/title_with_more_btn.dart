
import 'package:flutter/material.dart';
import 'package:planapp/constants.dart';

class TextWithBtnMore extends StatelessWidget {
  const TextWithBtnMore({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustumLine(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              primary: Colors.white, // foreground
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: press(),
            child: Text(
              "Plus",
              style: TextStyle(color: Colors.white),
            )
          )
        ],
      ),
    );
  }
}

//vue qu'on utilise souvant le titre souligner, on crée une fonction pour éviter la rpétition.
class TitleWithCustumLine extends StatelessWidget {
  const TitleWithCustumLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding / 4)),
                Text(
                  text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
