import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/all_expenses_item_listView.dart';
import 'package:responsive_dash_bord/widget/all_expensess_header.dart';
import 'package:responsive_dash_bord/widget/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          AllExpensesItemListview(),
        ],
      ),
    );
  }
}
