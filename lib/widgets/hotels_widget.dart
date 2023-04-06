import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_styles.dart';

import '../utils/app_layout.dart';

class HotelsWidget extends StatelessWidget {
  String image;
  String place;
  String destination;
  String price;

  HotelsWidget(
      {required this.place,
      required this.image,
      required this.destination,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 6,
                blurRadius: 3,
                offset: const Offset(5, 5))
          ]),
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/$image',
                    ))),
          ),
          const Gap(10),
          Text(
            place,
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            destination,
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$$price/night',
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
