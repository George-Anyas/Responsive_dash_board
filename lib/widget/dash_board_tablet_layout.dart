import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/custom_drawer_item.dart';
import 'package:responsive_dash_bord/widget/dashbaord_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
