import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/widget/all_expenses_item.dart';

class AllExpensesItemListview extends StatelessWidget {
  const AllExpensesItemListview({super.key});
  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesMoneys2x,
        title: 'Money',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesCardReceive,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129')
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: AllExpensesItem(isSelected: false, itemModel: item),
            ),
          );
        } else {
          return Expanded(
              child: AllExpensesItem(isSelected: false, itemModel: item));
        }
      }).toList(),
    );
    // children: items
    //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
    //     .toList());
  }
}
