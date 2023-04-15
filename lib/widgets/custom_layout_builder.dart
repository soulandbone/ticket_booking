import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  final int sections;
  final double width;
  final bool isColor;

  CustomLayoutBuilder(
      {required this.sections, this.width = 3, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
                      width: width,
                      height: 2,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: isColor
                                  ? Colors.white
                                  : Colors.grey.shade300)),
                    )));
      },
    );
  }
}
