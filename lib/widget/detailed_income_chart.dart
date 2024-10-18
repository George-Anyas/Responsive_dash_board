import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatelessWidget {
  const DetailedIncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff2064061),
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
