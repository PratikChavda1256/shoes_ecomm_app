import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoesapp/color/Colors.dart';
import 'package:shoesapp/customwidget/CustomTextField.dart';
import 'package:shoesapp/customwidget/LabelWidget.dart';
import 'package:shoesapp/text/StaticText.dart';

import '../customwidget/CustomeButton.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _iconintop(context),
          _header(context),
          _inputField(context),
          _signup(context)
        ],
      ),
    ));
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
      // children: [
      //   ElevatedButton.icon(onPressed: () {},
      //     icon: const Image(image: AssetImage("assets/images/loginpage/backbutton.png"), height: 24, width: 24),
      //     style: ElevatedButton.styleFrom(
      //       shape: const CircleBorder(),// const StadiumBorder(),
      //       padding: const EdgeInsets.symmetric(),
      //       backgroundColor: ShoesColors.textBg,
      //     ),
      //     label: const Text("")),
      // ]
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          StaticText.signupHeaderTopName,
          style: TextStyle(
              fontSize: 28,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.bold),
        ),
        Text(
          StaticText.signupHeaderTitleName,
          style: TextStyle(fontFamily: 'AirbnbCereal'),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const LabelWidget(labelName: StaticText.nameOfSignUp),
        const SizedBox(height: 6),
        const CustomTextField(hintText: StaticText.nameOfSignUp),
        const SizedBox(height: 10),
        const LabelWidget(labelName: StaticText.labelUserName),
        const SizedBox(height: 6),
        const CustomTextField(hintText: StaticText.labelUserName),
        const SizedBox(height: 10),
        const LabelWidget(labelName: StaticText.labelPassword),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            hintText: StaticText.labelPassword,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: ShoesColors.textBg,
            filled: true,
            // prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        const CustomButton(buttonName: StaticText.signupButtonName),
        const SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Image(
              image: AssetImage("assets/images/loginpage/googlelogo.png"),
              width: 24,
              height: 24),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: ShoesColors.textBg,
          ),
          label: const Text(
            "Sign in With Google",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
      ],
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already Have An Account?"),
        TextButton(
            onPressed: () {
              Get.toNamed('/Login');
            },
            child: const Text(
              "Sign In",
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }
}
