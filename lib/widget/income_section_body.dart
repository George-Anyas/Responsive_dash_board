import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/size_config.dart';
import 'package:responsive_dash_bord/widget/detailed_income_chart.dart';
import 'package:responsive_dash_bord/widget/income_chart.dart';
import 'package:responsive_dash_bord/widget/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.deskTop && width <= 1750
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(children: [
            Expanded(child: IncomeChart()),
            Expanded(
              child: IncomeDetails(),
            ),
          ]);

    // return width >= 1750
    //     ?

    //     : SizedBox();
  }
}
