import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/custom_background_container.dart';

import 'package:responsive_dash_bord/widget/latest_transction.dart';
import 'package:responsive_dash_bord/widget/quick_invoice_header.dart';
import 'package:responsive_dash_bord/widget/title_text_filed.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
          ),
          TitleTextFiled(title: 'Customer name', hint: 'Type customer name')
        ],
      ),
    );
  }
}
