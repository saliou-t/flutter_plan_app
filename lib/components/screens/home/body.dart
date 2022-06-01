import 'package:flutter/material.dart';
import 'package:planapp/components/Recommanded.dart';
import 'package:planapp/components/screens/home/header_with_search.dart';
import 'package:planapp/components/screens/home/title_with_more_btn.dart';
// import 'package:planapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // une instance de Size : nous fourni la largeur et la hauteur totales de notre écran
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(),
          TextWithBtnMore(title: 'Nos recomandations', press: (){}),
          Recomanded(size: size) , 
          TextWithBtnMore(title: 'Future plantes', press: (){}),
          Container(
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("") 
              ),
            ),
          )
        ],
      ),
    );
  }
}
