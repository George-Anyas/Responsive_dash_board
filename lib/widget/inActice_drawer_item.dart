import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_bord/models/drawer_item_model.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class InActiveDrawer extends StatelessWidget {
  const InActiveDrawer({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.tilte,
          style: AppStyles.styleMedium16(
            context,
          ),
        ),
      ),
    );
  }
}
