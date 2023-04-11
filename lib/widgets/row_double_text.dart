import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class RowDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const RowDoubleText(
      {required this.bigText, required this.smallText, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () => print('lol'),
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
