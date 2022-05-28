import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planapp/components/screens/home/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("/home/cheikh/Bureau/udemy/planapp/assets/icones/menu.svg"),onPressed: (){},),
    );
  }
}