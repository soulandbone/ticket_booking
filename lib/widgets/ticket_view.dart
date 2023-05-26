import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/custom_layout_builder.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;

  const TicketView({Key? key, required this.ticket, this.isColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 166,
      child: Container(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isColor ? const Color(0xFF526799) : Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(ticket['from']['code'],
                      style: isColor
                          ? Styles.headlineStyle3.copyWith(color: Colors.white)
                          : Styles.headlineStyle3
                              .copyWith(color: Colors.black)),
                  const Spacer(),
                  ThickContainer(
                    isColor: isColor,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: isColor
                                                        ? Colors.white
                                                        : Colors
                                                            .grey.shade300)),
                                          )),
                                );
                              },
                            )),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor
                                      ? Colors.white
                                      : const Color(0xFF88CCF7),
                                ))),
                      ],
                    ),
                  ),
                  ThickContainer(
                    isColor: isColor,
                  ),
                  const Spacer(),
                  Text(
                    ticket['to']['code'],
                    style: isColor
                        ? Styles.headlineStyle3.copyWith(color: Colors.white)
                        : Styles.headlineStyle3.copyWith(color: Colors.black),
                  ),
                ],
              ),
              const Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      ticket['from']['name'],
                      style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    ),
                  ),
                  Text(
                    ticket['flying_time'],
                    style: isColor
                        ? Styles.headlineStyle3.copyWith(color: Colors.white)
                        : Styles.headlineStyle3.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      ticket['to']['name'],
                      textAlign: TextAlign.end,
                      style: isColor
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    ),
                  ),
                ],
              )
            ]),
          ),
          Container(
            color: isColor ? Styles.orangeColor : Colors.white,
            child: const Row(children: [
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)))),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomLayoutBuilder(
                      sections: 15,
                    )),
              ),
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)))),
              )
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: isColor ? Styles.orangeColor : Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor ? 21 : 0),
                  bottomRight: Radius.circular(isColor ? 21 : 0)),
            ),
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket['date'],
                          style: isColor
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3),
                      const Gap(5),
                      Text(
                        'Date',
                        style: isColor
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(ticket['departure_time'],
                          style: isColor
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3),
                      const Gap(5),
                      Text(
                        'Departure time',
                        style: isColor
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(ticket['number'].toString(),
                          style: isColor
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3),
                      const Gap(5),
                      Text(
                        'Number',
                        style: isColor
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ],
      )),
    );
  }
}
