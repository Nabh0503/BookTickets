import 'package:bookingtickets/screens/tickets_view.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/layout_builder_widget.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          children: [
            const Gap(40),
            Text("Tickets",style: Styles.headLineStyle1,),
            const Gap(20),
            const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(ticket:ticketList[0],isColor: true,),
            ),
            SizedBox(height: 1,),
            Container(
              margin: const EdgeInsets.only(left:25,right: 10),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              color: Colors.white,
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText:'Nabh Varshney' ,
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,isColor: false,),
                      AppColumnLayout(
                        firstText:'5221 3456879' ,
                        secondText: 'passport',
                        alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),
                  const Gap(20),
                  const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText:'32145 325789' ,
                        secondText: 'No of E-ticket',
                        alignment: CrossAxisAlignment.start,isColor: false,),
                      AppColumnLayout(
                        firstText:'B2SG28' ,
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),
                  const Gap(20),
                  const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/visa.png",scale: 7,),
                              Text("*** 7890",style: Styles.headLineStyle3,),
                            ]
                          ),
                          Gap(5),
                          Text("Payment method",style: Styles.headLineStyle4,),
                        ],
                      ),
                      AppColumnLayout(firstText: '\$240.00', secondText: 'Price', alignment: CrossAxisAlignment.end,isColor: false,)
                    ],
                  ),
                  const SizedBox(height: 1,),
                ]
              ),
            ),
            SizedBox(height: 1,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))
                ,
              ),
              margin: EdgeInsets.only(left: 25,right: 10),
              padding: EdgeInsets.only(top: 20,bottom: 20),
              //BarCode
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(left: 9),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                      data: 'https://github.com/Nabh0503/BookTickets',
                      barcode: Barcode.code128(),
                      color: Styles.textColor,
                      drawText: false,
                    height: 80,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(ticket:ticketList[0],),
            ),
          ],
        ),
          Positioned(
            left: 23,
            top:295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 6,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 9,
            top:295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 6,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
