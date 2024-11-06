import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/widget/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
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
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListview.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
              child: AllExpensesItem(
                  isSelected: selectedIndex == index, itemModel: item),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
