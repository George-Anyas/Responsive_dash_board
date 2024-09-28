import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/drawer_item_model.dart';
import 'package:responsive_dash_bord/widget/drawer_item.dart';

class DrawersItemsListView extends StatelessWidget {
  const DrawersItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}
