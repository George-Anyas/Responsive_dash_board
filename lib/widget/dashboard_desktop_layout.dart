import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widget/custom_drawer_item.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}
