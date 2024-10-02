import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/widget/all_expenses_item.dart';
import 'package:responsive_dash_bord/widget/all_expensess_header.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      child: const Column(
        children: [
          AllExpensessHeader(),
          AllExpensesItem(
            itemModel: AllExpensesItemModel(
                image: Assets.imagesMoneys2x,
                title: 'Balance',
                date: 'April 2022',
                price: r'$20,129'),
          ),
        ],
      ),
    );
  }
}
