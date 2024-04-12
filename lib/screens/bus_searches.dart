import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:bookingtickets/screens/search_screen.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:bookingtickets/screens/bus_ticket_view.dart';
import 'package:bookingtickets/screens/bus_seating.dart';
import 'package:bookingtickets/screens/bus_seating_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BusSearch extends StatelessWidget {
  const BusSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const SearchScreen()));
        return false; // Prevents the default behavior of going back to the previous screen
      },

      child: Scaffold(
          backgroundColor: Styles.bgColor,
          appBar: AppBar
          (
          backgroundColor: Styles.secondaryColor,
          shadowColor: Colors.grey,
          leading: BackButton(
          onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const SearchScreen()));
          },
        ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 15,top: 5),
              icon: CircleAvatar(
                  child:  Icon(FluentSystemIcons.ic_fluent_home_regular,size: 20,color: Styles.bgColor,),
                backgroundColor: Styles.secondaryColor,

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
            // SingleChildScrollView(
            //   scrollDirection:Axis.vertical,
            //   padding: const EdgeInsets.symmetric(horizontal:20),
            //   child: Column(
            //     children: ticketList.map((ticket) => BusTicket(ticket: ticket)).toList(),
            //   ),
            // ),
            Builder(
              builder: (context) {
                final List<List<Seat>> seats = List.generate(
                 40,// number of rows
                      (i) => List.generate(
                    20, // number of seats per row
                        (j) => Seat(status: SeatStatus.available),
                  ),
                );
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        //MaterialPageRoute(builder: (BuildContext context) => BusSeating(seats: seats)));
                        MaterialPageRoute(builder: (BuildContext context) => ChooseSeat()));
                  },
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal:15),
                    physics: NeverScrollableScrollPhysics(),
                    children: busTicket.map((busticket) => BusTicket(busticket: busticket,isColor: false,)).toList(),
                  ),
                );
              }
            ),
          ]
        ),

      ),
    );
  }
}
