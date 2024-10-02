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
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpensesItem(itemModel: items[index]);
      },
    );
  }
}
