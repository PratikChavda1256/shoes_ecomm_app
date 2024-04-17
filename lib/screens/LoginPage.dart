import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoesapp/color/Colors.dart';
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
              fontSize: 40,
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
      children: [
        const Text(
          StaticText.labelUserName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
              // labelText: StaticText.labelUserName,
              hintText: StaticText.labelUserName,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none),
              fillColor: ShoesColors.textBg,
              filled: true,
              floatingLabelStyle: const TextStyle(
                fontSize: 25,
              )
              // prefixIcon: const Icon(Icons.person)
              ),
        ),
        const SizedBox(height: 10),
        const Text(
          StaticText.labelPassword,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
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
              onPressed: () {},
                child: const Text(
                    StaticText.forgotPassword,
                ),

            ),
          ],
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: ShoesColors.loginButtonColor,
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20,color: ShoesColors.textBg),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.g_mobiledata),
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
        const Text("Don't have an account? "),
        TextButton(
            onPressed: () {
              Get.toNamed('/signup');
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.purple),
            ))
      ],
    );
  }
}
