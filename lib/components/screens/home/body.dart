// import 'dart:ffi';

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
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Text(
                  "Recommendation", 
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                ),
                Container(
                  height: 7,
                  color: kPrimaryColor
                ),
              ],
            ),
          )
        ],
      ),    
    );
  }
}