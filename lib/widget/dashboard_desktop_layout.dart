import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widget/all_expensess.dart';
import 'package:responsive_dash_bord/widget/custom_drawer_item.dart';
import 'package:responsive_dash_bord/widget/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpensess(),
                QuickInvoice(),
              ],
            )),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
