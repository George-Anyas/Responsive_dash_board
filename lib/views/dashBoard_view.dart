import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/size_config.dart';
import 'package:responsive_dash_bord/widget/adaptive_layout.dart';
import 'package:responsive_dash_bord/widget/custom_drawer_item.dart';
import 'package:responsive_dash_bord/widget/dash_board_tablet_layout.dart';
import 'package:responsive_dash_bord/widget/dashbaord_mobile_layout.dart';
import 'package:responsive_dash_bord/widget/dashboard_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? const CustomDrawer()
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
