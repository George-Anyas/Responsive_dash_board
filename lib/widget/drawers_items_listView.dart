import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/drawer_item_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/widget/drawer_item.dart';

class DrawersItemsListView extends StatefulWidget {
  const DrawersItemsListView({
    super.key,
  });

  @override
  State<DrawersItemsListView> createState() => _DrawersItemsListViewState();
}

class _DrawersItemsListViewState extends State<DrawersItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      image: Assets.assetsImagesDashboard,
      tilte: 'Dashboard',
    ),
    const DrawerItemModel(
      image: Assets.assetsImagesMyTransaction,
      tilte: 'My Transaction',
    ),
    const DrawerItemModel(
      image: Assets.assetsImagesStatics,
      tilte: 'Statistics',
    ),
    const DrawerItemModel(
      image: Assets.assetsImagesWallet2,
      tilte: 'Wallet Account',
    ),
    const DrawerItemModel(
      image: Assets.assetsImagesMyInvestments,
      tilte: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
