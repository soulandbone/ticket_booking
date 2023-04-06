import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/hotels_widget.dart';
import '../widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(children: [
              const Gap(40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning', style: Styles.headlineStyle3),
                      const Gap(5),
                      Text(
                        'Book tickets',
                        style: Styles.headlineStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_1.png'))),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xffBFC205),
                    ),
                    Text(
                      'Search',
                      style: Styles.headlineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flights',
                    style: Styles.headlineStyle2,
                  ),
                  InkWell(
                    onTap: () => print('lol'),
                    child: Text(
                      'View all',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: Styles.headlineStyle2),
                InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                    child: Text(
                      'View All',
                      style: Styles.textStyle.copyWith(
                        color: Styles.textColor,
                      ),
                    ))
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: AppInfoList.hotelList
                    .map((e) => HotelsWidget(
                        image: e['image']!,
                        place: e['place']!,
                        destination: e['destination']!,
                        price: e['price']!))
                    .toList()),
          )
        ],
      ),
    );
  }
}
