import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_bord/widget/custom_drawer_item.dart';

import 'package:responsive_dash_bord/widget/my_cards_page_view.dart';

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
          child: SingleChildScrollView(
            child: AllExpensessAndQuickInvoiceSection(),
          ),
        ),
        Expanded(child: MyCardsPageView())
      ],
    );
  }
}
