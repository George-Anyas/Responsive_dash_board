import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
