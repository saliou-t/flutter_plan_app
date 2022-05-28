// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planapp/constants.dart';
// import 'package:planapp/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // une instance de Size : nous fourni la largeur et la hauteur totales de notre écran
    Size size = MediaQuery.of(context).size;
    return Column(

      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: kDefaultPadding,
          ),
          height: size.height * 0.25, //ça prendra 30% de la hauteur totale
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 36 + kDefaultPadding,
                ),
                height: size.height *0.25 - 30,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Plan shop',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Image.asset("/home/cheikh/Bureau/udemy/planapp/assets/images/logo.png")
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.43)
                      ),
                    ],
                  ) ,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child : TextField(
                          decoration: InputDecoration(
                            hintText: "Chercher",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffixIcon: SvgPicture.asset("/home/cheikh/Bureau/udemy/planapp/assets/icones/search.svg")
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icones/search.svg")
                    ],
                  ),
                )
              ),
            ],
          ),
        )
      ],
    );
  }
}