import 'package:flutter/material.dart';
import 'package:planapp/components/Recommanded.dart';
import 'package:planapp/components/screens/home/header_with_search.dart';
import 'package:planapp/components/screens/home/title_with_more_btn.dart';
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
          Recomanded(size: size)  
          
        ],
      ),
    );
  }
}
