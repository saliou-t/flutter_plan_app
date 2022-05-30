import 'package:flutter/material.dart';
import 'package:planapp/components/screens/home/header_with_search.dart';
import 'package:planapp/components/screens/home/plante_recommended.dart';
import 'package:planapp/components/screens/home/title_with_more_btn.dart';
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
          TextWithBtnMore(title: 'Nos recomandations', press: (){}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children: <Widget>[
                PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
                PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
                PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
              ],
            ) ,
          )  
          
        ],
      ),
    );
  }
}
