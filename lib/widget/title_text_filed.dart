import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';
import 'package:responsive_dash_bord/widget/custom_text_field.dart';

class TitleTextFiled extends StatelessWidget {
  const TitleTextFiled({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer name',
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint, title: title)
      ],
    );
  }
}
