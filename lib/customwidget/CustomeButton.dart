import 'package:flutter/material.dart';
import 'package:shoesapp/color/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
