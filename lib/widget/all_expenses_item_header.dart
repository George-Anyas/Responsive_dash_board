import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackGround, this.imageColor});
  final String image;
  final Color? imageBackGround, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: imageBackGround ?? Color(0xffFAFAFA),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
