import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFAFAFA),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(),
      ),
    );
  }
}

OutlineInputBorder BuildBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(
        12,
      ));
}
