import 'package:bookingtickets/Screens/Ticket/tickets_view.dart';
import 'package:bookingtickets/Screens/bottom_bar.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UpcomingBus extends StatelessWidget {
  const UpcomingBus({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
        return false; // Prevents the default behavior of going back to the previous screen
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        appBar: AppBar(
          backgroundColor: Styles.primaryColor1,
          shadowColor: Colors.white,
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
            },
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: 15,top: 5),
              icon: CircleAvatar(
                backgroundColor: Styles.primaryColor1,
                child:  Icon(FluentSystemIcons.ic_fluent_home_regular,size: 20,color: Styles.textColor,),

              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
              },
            ),
          ],
          ),
        body: ListView(
          children:[
            const Gap(20),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal:15),
              physics: const NeverScrollableScrollPhysics(),
                children: ticketList.map((singleticket) => TicketView(ticket: singleticket)).toList()
            )
          ]
        ),
        ),
    );
  }
}
