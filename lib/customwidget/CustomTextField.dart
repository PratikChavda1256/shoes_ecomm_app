import 'package:flutter/material.dart';

import '../color/Colors.dart';
class CustomTextField extends StatelessWidget {
  final String hintText ;
  const CustomTextField({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // labelText: StaticText.labelUserName,
          hintText: hintText,
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
    );
  }
}
