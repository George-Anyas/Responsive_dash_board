import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_bord/models/drawer_item_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';

import 'package:responsive_dash_bord/widget/drawers_items_listView.dart';
import 'package:responsive_dash_bord/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.assetsImagesDashboard,
      tilte: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesMyTransaction,
      tilte: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesStatics,
      tilte: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesWallet2,
      tilte: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesMyInvestments,
      tilte: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          UserInfoListTile(
              image: Assets.assetsImagesFrame,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com'),
          SizedBox(
            height: 8,
          ),
          DrawersItemsListView(items: items)
        ],
      ),
    );
  }
}
