import 'package:flutter/material.dart';
import 'package:shoesapp/color/Colors.dart';
import 'package:shoesapp/text/StaticText.dart';


class FirstStartedPage extends StatelessWidget {
  const FirstStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children:[
          Image(image: AssetImage("assets/images/startpages/shoe1.png"),),
        ],
      ),
    ) ;
  }
}
