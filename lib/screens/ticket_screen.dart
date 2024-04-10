import 'package:bookingtickets/screens/tickets_view.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
            const Gap(40),
            Text("Tickets",style: Styles.headLineStyle1,),
            const Gap(20),
            const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(ticket:ticketList[0],isColor: true,),
            )
          ],
        ),
        ],
      ),
    );
  }
}
