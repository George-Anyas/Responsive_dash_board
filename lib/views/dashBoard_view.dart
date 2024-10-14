import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widget/adaptive_layout.dart';
import 'package:responsive_dash_bord/widget/dash_board_tablet_layout.dart';
import 'package:responsive_dash_bord/widget/dashbaord_mobile_layout.dart';
import 'package:responsive_dash_bord/widget/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: const Color(0xffF8F8FB),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
