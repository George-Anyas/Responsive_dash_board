import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/user_info_model.dart';
import 'package:responsive_dash_bord/utils/app_images.dart';
import 'package:responsive_dash_bord/widget/user_info_list_tile.dart';

class LatestTransctionsListView extends StatelessWidget {
  const LatestTransctionsListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesFrame,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => SingleChildScrollView(
                child:
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: items[index]));
    //     },
    //   ),
    // );
  }
}
