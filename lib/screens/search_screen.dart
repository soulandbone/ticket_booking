import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

import '../widgets/icon_text.dart';
import '../widgets/row_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            children: [
              const Gap(40),
              Text(
                'What are\nyou looking for',
                style: Styles.headlineStyle1.copyWith(fontSize: 35),
              ),
              const Gap(20),
              const TicketTabs(firstTab: 'AirlineTickets', secondTab: 'Hotels'),
              const Gap(25),
              const IconText(
                  icon: Icons.flight_takeoff_rounded, text: 'Departure'),
              const Gap(15),
              const IconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
              const Gap(5),
              ElevatedButton(
                onPressed: () => print('lol'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xD91130CE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
              const Gap(15),
              const RowDoubleText(
                  bigText: 'Upcoming Flights', smallText: 'View all'),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 4,
                            spreadRadius: 1),
                      ],
                    ),
                    height: 415,
                    width: size.width * 0.42,
                    padding: const EdgeInsets.all(15),
                    child: Column(children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/sit.jpg'))),
                      ),
                      const Gap(12),
                      Text(
                          '20% discount on the early booking of this flight. Don\'t miss',
                          style: Styles.headlineStyle2)
                    ]),
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            width: size.width * 0.44,
                            height: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xFF3AB8B8),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discount\nfor survey',
                                    style: Styles.headlineStyle2.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Take the survey about our services and get discount',
                                    style: Styles.headlineStyle2.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                          Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Container(
                        width: size.width * 0.44,
                        height: 200,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: const Color(0xFFEC6545),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(children: [
                          Text(
                            'Take love',
                            style: Styles.headlineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            //textAlign: TextAlign.center,
                          ),
                          const Gap(5),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 32)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 44)),
                            TextSpan(text: '😘', style: TextStyle(fontSize: 32))
                          ]))
                        ]),
                      )
                    ],
                  )
                ],
              )
            ]));
  }
}
