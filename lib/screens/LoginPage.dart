import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoesapp/color/Colors.dart';
import 'package:shoesapp/customwidget/CustomTextField.dart';
import 'package:shoesapp/customwidget/CustomeButton.dart';
import 'package:shoesapp/customwidget/LabelWidget.dart';
import 'package:shoesapp/text/StaticText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              _header(context),
              _inputField(context),
              _signup(context),
            ],
          ),
      ));
  }
  //
  _header(context) {
    return const Column(
      children: [
        Text(
          StaticText.loginHeaderTopName,
          style: TextStyle(
              fontSize: 28,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.bold),
        ),
        Text(
          StaticText.loginHeaderTitleName,
          style: TextStyle(fontFamily: 'AirbnbCereal'),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
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

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/ForgotPassword');
              },
                child: const Text(
                    StaticText.forgotPassword,
                ),

            ),
          ],
        ),
        const SizedBox(height: 10),
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     shape: const StadiumBorder(),
        //     padding: const EdgeInsets.symmetric(vertical: 16),
        //     backgroundColor: ShoesColors.loginButtonColor,
        //   ),
        //   child: const Text(
        //     "Login",
        //     style: TextStyle(fontSize: 20,color: ShoesColors.textBg),
        //   ),
        // ),
        const CustomButton(buttonName: StaticText.loginButtonName),
        const SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Image(image: AssetImage("assets/images/loginpage/googlelogo.png"),width: 24, height: 24),
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
        const Text("Don't Have An Account?"),
        TextButton(
            onPressed: () {
              Get.toNamed('/Signup');
            },
            child: const Text(
              "Sign Up For Free",
              style: TextStyle(color: Colors.black),
            )
        )
      ],
    );
  }
}
