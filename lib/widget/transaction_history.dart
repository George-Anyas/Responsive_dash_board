import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              'See all',
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Color(0xff4EB7F2)),
            )
          ],
        )
      ],
    );
  }
}
