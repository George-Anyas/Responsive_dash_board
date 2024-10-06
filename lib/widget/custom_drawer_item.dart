import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/models/drawer_item_model.dart';
import 'package:responsive_dash_bord/models/user_info_model.dart';

import 'package:responsive_dash_bord/utils/app_images.dart';

import 'package:responsive_dash_bord/widget/drawers_items_listView.dart';
import 'package:responsive_dash_bord/widget/inActice_drawer_item.dart';
import 'package:responsive_dash_bord/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesFrame,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawersItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawer(
                  drawerItemModel: DrawerItemModel(
                      tilte: 'Setting system', image: Assets.imagesSetting22x),
                ),
                InActiveDrawer(
                  drawerItemModel: DrawerItemModel(
                      tilte: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
