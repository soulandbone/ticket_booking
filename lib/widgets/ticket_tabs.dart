import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TicketTabs({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)),
        child: Row(children: [
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),
          Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Center(child: Text(secondTab))),
        ]),
      ),
    );
  }
}
