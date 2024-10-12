import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: const Color(0xff2064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
