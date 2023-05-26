import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/widgets/custom_layout_builder.dart';
import 'package:ticket_booking/widgets/two_text_column.dart';
import '../utils/app_info_list.dart';
import '../widgets/ticket_tabs.dart';
import '../widgets/ticket_view.dart';
import './/utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(children: [
          ListView(
            padding: const EdgeInsets.all(15),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: Styles.headlineStyle1,
              ),
              const Gap(20),
              const TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7.5),
                child: TicketView(
                  ticket: AppInfoList.ticketList[0],
                  isColor: false,
                ),
              ),
              const Gap(2),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 7),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwoTextColumn(
                            firstText: 'Flutter DB', secondText: 'Passenger'),
                        TwoTextColumn(
                          firstText: '5221 478566',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ),
                  const Gap(2),
                  const CustomLayoutBuilder(
                    sections: 15,
                    isColor: false,
                  ),
                  const Gap(2),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwoTextColumn(
                            firstText: '5221 364869',
                            secondText: 'Number of E-Ticket'),
                        TwoTextColumn(
                          firstText: 'b2SG28',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ),
                  const Gap(2),
                  const CustomLayoutBuilder(
                    sections: 15,
                    isColor: false,
                  ),
                  const Gap(2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                const Text('*** 2462')
                              ],
                            ),
                            const Text('Payment Method')
                          ],
                        ),
                        const TwoTextColumn(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                  ),
                  const Gap(2),
                  const CustomLayoutBuilder(
                    sections: 15,
                    isColor: false,
                  ),
                  const Gap(2),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        data: 'https:github.com/martinovovo',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7.5),
                    child: TicketView(
                      ticket: AppInfoList.ticketList[0],
                      isColor: true,
                    ),
                  ),
                ]),
              )
            ],
          ),
          Positioned(
            bottom: AppLayout.getScreenSize() / 2,
            left: 14,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: const CircleAvatar(
                maxRadius: 4,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            bottom: AppLayout.getScreenSize() / 2,
            right: 14,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: const CircleAvatar(
                maxRadius: 4,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ]));
  }
}
