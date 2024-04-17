import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../customwidget/CustomTextField.dart';
import '../customwidget/CustomeButton.dart';
import '../customwidget/LabelWidget.dart';
import '../text/StaticText.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.all(34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              _iconintop(context),
              SizedBox(height: 30),
              _header(context),
              SizedBox(height: 60),
              _inputField(context)
            ],
          ),
        )
    );
  }
  _iconintop(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              Get.toNamed('/Login');
            },
            child: const  Image(
              image: AssetImage("assets/images/loginpage/backbutton.png"),
              height: 24,
              width: 24,
            ))
      ],

    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          StaticText.forgotHeaderTopName,
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'AirbnbCereal',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center, // Center the text horizontally
        ),
        SizedBox(height: 8),
        Text(
          StaticText.forgotHeaderTitleName,
          style: TextStyle(
            fontFamily: 'AirbnbCereal',
          ),
          textAlign: TextAlign.center, // Center the text horizontally
        ),
      ],
    );
  }

  _inputField(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        LabelWidget(labelName: StaticText.labelUserName),
        SizedBox(height: 6),
        CustomTextField(hintText: StaticText.labelUserName),
        SizedBox(height: 10),
        CustomButton(buttonName: StaticText.forgotButtonName),
        SizedBox(height: 30),

      ],
    );
  }


}
