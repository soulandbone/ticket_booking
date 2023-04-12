import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';
import '../widgets/ticket_view.dart';
import './/utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        body: Stack(children: [
      ListView(padding: const EdgeInsets.all(20), children: [
        const Gap(40),
        Text(
          'Tickets',
          style: Styles.headlineStyle1,
        ),
        const Gap(20),
        const TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
        const Gap(20),
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: TicketView(
            ticket: AppInfoList.ticketList[0],
            isColor: false,
          ),
        )
      ]),
    ]));
  }
}
