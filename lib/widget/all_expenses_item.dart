import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';

import 'package:responsive_dash_bord/widget/inActive_allExpenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensesItem(itemModel: itemModel);
  }
}
