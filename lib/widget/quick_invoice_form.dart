import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/custom_button_.dart';
import 'package:responsive_dash_bord/widget/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextFiled(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextFiled(
                    title: 'Customer Email', hint: 'Type customer Email'))
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextFiled(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextFiled(title: 'Item mount', hint: 'USD'))
          ],
        ),
        Row(
          children: [
            Expanded(child: CustomBotton()),
            Expanded(child: CustomBotton())
          ],
        )
      ],
    );
  }
}
