import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/models/drawer_item_model.dart';

import 'package:responsive_dash_bord/widget/active_drawer_item.dart';
import 'package:responsive_dash_bord/widget/inActice_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawer(drawerItemModel: drawerItemModel);
  }
}
