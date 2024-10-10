import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

import 'package:responsive_dash_bord/widget/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xffAAAAAA)),
        )
      ],
    );
  }
}