// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:planapp/constants.dart';
// import 'package:planapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // une instance de Size : nous fourni la largeur et la hauteur totales de notre écran
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2, //ça prendra 20% de la hauteur totale
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height *0.2 - 27,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )

                ),
                
              ),
            ],
          ),
        )
      ],
    );
  }
}