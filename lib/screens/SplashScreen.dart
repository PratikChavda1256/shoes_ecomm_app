import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp/color/Colors.dart';
import 'package:shoesapp/text/StaticText.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    _navigateToHome();
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splashscreen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
            child:Text(StaticText.appName,
              style:TextStyle(color: ShoesColors.textBg,fontSize: 30,
                  fontWeight: FontWeight.bold) ,)
        ),
      ),
    );
  }

  void _navigateToHome() async {
      print("hello");
      await Future.delayed(const Duration(milliseconds: 2000),() {});
      Get.offNamed("/FirstStartedPage");
  }
}
