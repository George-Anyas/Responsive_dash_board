import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widget/custom_background_container.dart';
import 'package:responsive_dash_bord/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [QuickInvoiceHeader()],
      ),
    );
  }
}
