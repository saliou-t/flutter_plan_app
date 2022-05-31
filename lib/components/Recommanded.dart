
// ignore: camel_case_types
import 'package:flutter/material.dart';

import 'screens/home/plante_recommended.dart';

class Recomanded extends StatelessWidget {
  const Recomanded({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children: <Widget>[
          PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
          PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
          PlantRecommanded(size: size, contry: 'Sénégal', price: '\$500', titleImage: 'Santanara', imagePath: '/home/cheikh/Bureau/udemy/planapp/assets/images/planta1.jpg', press: (){},),
        ],
      ) ,
    );
  }
}
