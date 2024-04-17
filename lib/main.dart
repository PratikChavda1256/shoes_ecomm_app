import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoesapp/routes/Routes.dart';

import 'color/Colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      getPages: getPages,
      theme: ThemeData(fontFamily: 'AirbnbCereal'),
    );
  }
}
