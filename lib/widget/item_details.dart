import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/item_details_model.dart';
import 'package:responsive_dash_bord/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsModel});
  final ItemDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            color: incomeDetailsModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
