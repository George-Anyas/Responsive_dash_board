import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/transaction_model.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionmodel});
  final TransactionModel transactionmodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionmodel.title,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: const Color(0xFF064060)),
        ),
        subtitle: Text(
          transactionmodel.subtitle,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionmodel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionmodel.isWithdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
