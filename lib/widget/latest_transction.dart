import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';
import 'package:responsive_dash_bord/widget/latest_transction_listView.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransctionsListView()
      ],
    );
  }
}
