import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TwoTextColumn extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;

  const TwoTextColumn(
      {required this.firstText,
      required this.secondText,
      this.alignment = CrossAxisAlignment.start,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headlineStyle3),
        const Gap(5),
        Text(secondText, style: Styles.headlineStyle4)
      ],
    );
  }
}
