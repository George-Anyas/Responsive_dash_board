import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widget/custom_dot_indcator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return const Padding(
          padding: EdgeInsets.only(right: 6),
          child: CustomDotIndcator(isActive: false),
        );
      }),
    );
  }
}
