import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/item_details_model.dart';
import 'package:responsive_dash_bord/widget/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
  });

  static const items = [
    ItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40 %',
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25 %',
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20 %',
    ),
    ItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '22 %',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            items.map((e) => ItemDetails(incomeDetailsModel: e)).toList());
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return ItemDetails(incomeDetailsModel: items[index]);
    //     });
  }
}
