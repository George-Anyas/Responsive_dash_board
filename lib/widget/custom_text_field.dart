import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.title});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: Color(0xffAAAAAA)),
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
