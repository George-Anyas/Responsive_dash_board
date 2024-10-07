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
            .copyWith(color: const Color(0xffAAAAAA)),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffFAFAFA)),
      borderRadius: BorderRadius.circular(
        12,
      ));
}
