import 'package:bookingtickets/screens/Home/hotel_screen.dart';
import 'package:bookingtickets/screens/Search/search_screen.dart';
import 'package:bookingtickets/screens/Ticket/tickets_view.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children:[
          Container(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Column(
              children:[
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",style: Styles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    )
                  ]
                ),
                const Gap(25),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (BuildContext context) => const SearchScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                        Text(
                            "Search",
                          style: Styles.headLineStyle4,
                        ),
                      ]
                    ),
                  ),
                ),
                const Gap(50),
                const AppDoubleTextWidget(bigText: "Upcoming Buses", smallText: "View All", myScreen: SearchScreen()),
              ]
            ),
          ),
          const Gap(25),
           SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: ticketList.take(2).map((singleticket) => TicketView(ticket: singleticket)).toList()
            ),
          ),
          const Gap(50),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View All", myScreen: SearchScreen()),
          ),
          const Gap(25),
          SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Row(
                  children:hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
              )),
        ]
      ),
    );
  }
}
