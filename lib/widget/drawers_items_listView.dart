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
      image: Assets.imagesDashboard,
      tilte: 'Dashboard',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyTransaction,
      tilte: 'My Transaction',
    ),
    const DrawerItemModel(
      image: Assets.imagesStatics,
      tilte: 'Statistics',
    ),
    const DrawerItemModel(
      image: Assets.imagesWallet2,
      tilte: 'Wallet Account',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyInvestments,
      tilte: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
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
