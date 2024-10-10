import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/transaction_model.dart';
import 'package:responsive_dash_bord/widget/transaction_item.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 ',
        amount: r'$$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionmodel: items[index]);
        });
  }
}
