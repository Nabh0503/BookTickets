import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, this.firstTab="Bus Tickets", this.secondTab="Hotels"});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)
        ),
        child: Row(
          children: [
            //Airline Tickets
            Container(
              width: size.width*.9,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white
              ),
              child: Center(child: Text(firstTab,style: Styles.headLineStyle5)),
            ),
            //Hotels
            Container(
              width: size.width*.9,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent
              ),
              child: Center(child: Text(secondTab,style: Styles.headLineStyle5,)),
            )
          ],
        ),
      ) ,
    );
  }
}
