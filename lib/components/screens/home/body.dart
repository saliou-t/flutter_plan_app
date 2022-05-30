import 'package:flutter/material.dart';
import 'package:planapp/components/screens/home/header_with_search.dart';
import 'package:planapp/constants.dart';
// import 'package:planapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // une instance de Size : nous fourni la largeur et la hauteur totales de notre écran
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(),
          Row(
            children: <Widget>[
              TitleWithCustumLine(
                text: "Recommandé pour vous"
              )
            ],
          ),
        ],
      ),
    );
  }
}

//vue qu'on utilise souvant le titre souligner, on crée une fonction pour éviter la rpétition.
class TitleWithCustumLine extends StatelessWidget {
  const TitleWithCustumLine(
    {Key? key, required this.text,}
    
  ) : super(key: key);

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
                  padding: const EdgeInsets.only(left: kDefaultPadding /4)
                ),
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