import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/two_text_column.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              const Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headlineStyle1,
                  ),
                  const Gap(10),
                  Text('New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500)),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const Gap(6),
                      const Text(
                        'Premium Status',
                        style: TextStyle(
                            color: Color(
                              0xFF526799,
                            ),
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => print('You are tapped'),
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Styles.primaryColor),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 25,
                            child: Icon(
                              size: 27,
                              FluentSystemIcons
                                  .ic_fluent_lightbulb_filament_filled,
                              color: Styles.primaryColor,
                            )),
                        const Gap(12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'You\'ve got a new award',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'You have 150 flights in a year',
                              style: Styles.textStyle.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.9)),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                          width: 14, color: const Color(0xFF264CD2))),
                ),
              ),
            ],
          ),
          const Gap(25),
          Text(
            'Accumulated miles',
            style: Styles.headlineStyle2,
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(children: [
              Text(
                '121456',
                style: Styles.headlineStyle1.copyWith(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles accrued',
                    style: Styles.headlineStyle4.copyWith(fontSize: 16),
                  ),
                  Text(
                    '23 may 2023',
                    style: Styles.headlineStyle4.copyWith(fontSize: 16),
                  )
                ],
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoTextColumn(firstText: '29 021', secondText: 'Miles'),
                  TwoTextColumn(
                    firstText: 'Delta Airlines',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoTextColumn(firstText: '89', secondText: 'Miles'),
                  TwoTextColumn(
                    firstText: 'Burger King',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TwoTextColumn(firstText: '52340', secondText: 'Miles'),
                  TwoTextColumn(
                    firstText: 'Exuma',
                    secondText: 'Received From',
                    alignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
              const Gap(35),
              InkWell(
                onTap: () => print('You are good'),
                child: Center(
                    child: Text(
                  'How to get more miles',
                  style: TextStyle(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500),
                )),
              )
            ]),
          )
        ],
      ),
    );
  }
}
