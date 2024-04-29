import 'package:flutter/material.dart';
import 'package:flutterprojects/controller/ProductController.dart';
import 'package:flutterprojects/customwidget/CustomCardFavourite.dart';
import 'package:flutterprojects/routes/Routes.dart';
import 'package:get/get.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {

  @override
  void initState() {
    super.initState();
    Get.put(productControllerObj);
  }

  ProductController productControllerObj = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF8F9FA),
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.offNamed(Routes.dashboard);
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/icons/back_ic.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Best Sellers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  child: Container(
                    width: 70,
                    height: 70,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Image(image:AssetImage("assets/images/sort.png"),width: 24,height: 24,),
                        ),
                        Image(image:AssetImage("assets/images/search.png"),width: 24,height: 24,),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              // Create a grid with 2 columns
              crossAxisCount: 2,
              // Generate 20 widgets that display their index in the List
              children: List.generate(productControllerObj.products.length, (index) {
                return Container(margin:const EdgeInsets.all(10),height:200,child:
                CustomCardFavourite(index: index,
                  objProduct: productControllerObj.products[index], isFavourite: false,));
              }),
            ),
          ),
        ]));
  }
}
