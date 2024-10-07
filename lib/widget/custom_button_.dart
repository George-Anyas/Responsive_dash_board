import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.backGroundColor, this.textColor});

  final Color? backGroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backGroundColor ?? const Color(0xff4EB7F2)),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
