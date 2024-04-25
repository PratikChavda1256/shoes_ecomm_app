import 'package:flutter/material.dart';
import 'package:flutterprojects/controller/CartController.dart';
import 'package:flutterprojects/controller/OnBoardController.dart';
import 'package:flutterprojects/controller/ProductController.dart';
import 'package:flutterprojects/routes/Routes.dart';
import 'package:get/get.dart';


void main(){
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => CartController(), fenix : true);
  Get.lazyPut(() => ProductController(), fenix: true);
  Get.lazyPut(() => OnBoardController(), fenix: true);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp (
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: getPages,
    );
  }
}
