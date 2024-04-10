import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/double_text_widget.dart';
import 'package:bookingtickets/widgets/icon_text_widget.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const Gap(40),
          Text("What are\nyou looking for?",style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          const Gap(20),
          const AppTicketTabs(firstTab: "Bus Tickets",secondTab: "Hotels",),
          const Gap(20),
          const AppIconText(icon: Icons.bus_alert_outlined, text: "Departure"),
          const Gap(15),
          const AppIconText(icon: Icons.bus_alert_sharp, text: "Arrival"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent
            ),
            child: Center(child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),))
          ),
          const Gap(25),
          const AppDoubleTextWidget(bigText: "Upcoming Buses", smallText: "View All"),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                height: 420,
                width: size.width*.42,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white
                ),
                child: Column(
                  children:[
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('images/bus1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Text("20% discount on the first booking. Don't miss out the Discount",style: Styles.headLineStyle2,),
                  ]
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*.42,
                        height: 230,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),

                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color:Colors.white)),
                            const Gap(10),
                            Text("Complete the survey and get 10% discount on your next booking",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -42,
                        child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFF189999),width: 18),
                            color: Colors.transparent
                        ),
                      ),
                        
                      )
                    ],
                  ),
                  const Gap(8),
                  Container(
                    width: size.width*.42,
                    height: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(18),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                      color: Colors.orange,
                    ),
                    child: Column(
                      children: [
                        Text("Take Love",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color:Colors.white),textAlign: TextAlign.center,),
                        const Gap(10),
                        RichText(
                            text:const TextSpan(
                              children: [
                                TextSpan(
                                text:'😊',
                                style: TextStyle(fontSize: 35)
                            ),
                                TextSpan(
                                  text:'😍',
                                  style: TextStyle(fontSize: 52)
                                ),
                                TextSpan(
                                    text:'😘',
                                    style: TextStyle(fontSize: 35)
                                ),
                              ],
                        ),
                        )
                      ],
                    ),
                  )

                ],
              )
            ]
          )


        ],
      )
    );
  }
}
