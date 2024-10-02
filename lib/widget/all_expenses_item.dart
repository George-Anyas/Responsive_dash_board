import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widget/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1F),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white),
      child: const Column(
        children: [AllExpensesItemHeader()],
      ),
    );
  }
}
