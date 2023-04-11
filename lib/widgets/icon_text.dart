import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(children: [
        Icon(
          icon,
          color: const Color(0xFFBFC2D5),
        ),
        const Gap(10),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
