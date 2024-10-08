import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(
                Assets.imagesMaskgroup,
              ),
            ),
            color: const Color(0XFF4EB7F1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
