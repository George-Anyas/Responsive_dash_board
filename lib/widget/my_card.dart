import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

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
        child: ListTile(
          contentPadding: const EdgeInsets.only(top: 16, left: 30, right: 40),
          title: Text(
            'My Name',
            style:
                AppStyles.styleRegular16(context).copyWith(color: Colors.white),
          ),
          subtitle: Text(
            'George Soliman',
            style: AppStyles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
      ),
    );
  }
}
