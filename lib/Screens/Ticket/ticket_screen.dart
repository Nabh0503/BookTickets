import 'package:bookingtickets/screens/Ticket/tickets_view.dart';
import 'package:bookingtickets/utils/app_info_list.dart';
import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/layout_builder_widget.dart';
import 'package:bookingtickets/widgets/ticket_tabs.dart';
import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLayout.getSize(context);
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
        return false; // Prevents the default behavior of going back to the previous screen
      },
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            children: [
              const Gap(50),
              Text("Tickets",style: Styles.headLineStyle1,),
              const Gap(25),
              const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
              const Gap(25),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket:ticketList[0],isColor: true,),
              ),
              const SizedBox(height: 1,),
              Container(
                margin: const EdgeInsets.only(left:25,right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                color: Colors.white,
                child: Column(
                  children:[
                    const Row(
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
                    const Gap(25),
                    const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                    const Gap(25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText:'32145 325789' ,
                          secondText: 'No of E-ticket',
                          alignment: CrossAxisAlignment.start,isColor: true,),
                        AppColumnLayout(
                          firstText:'B2SG28' ,
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,isColor: false,)
                      ],
                    ),
                    const Gap(25),
                    const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                    const Gap(25),
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
                            const Gap(5),
                            Text("Payment method",style: Styles.headLineStyle4,),
                          ],
                        ),
                        const AppColumnLayout(firstText: '\$240.00', secondText: 'Price', alignment: CrossAxisAlignment.end,isColor: false,)
                      ],
                    ),
                    const SizedBox(height: 1,),
                  ]
                ),
              ),
              const SizedBox(height: 1,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))
                  ,
                ),
                margin: const EdgeInsets.only(left: 25,right: 10),
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                //BarCode
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.only(left: 9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                        data: 'https://github.com/Nabh0503/BookTickets',
                        barcode: Barcode.code128(),
                        color: Styles.textColor1,
                        drawText: false,
                      height: 80,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket:ticketList[0],),
              ),
            ],
          ),
            Positioned(
              left: 20,
              top:295,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.primaryColor1,width: 3),
                ),
                child: CircleAvatar(
                  maxRadius: 6,
                  backgroundColor: Styles.primaryColor1,
                ),
              ),
            ),
            Positioned(
              right: 6,
              top:295,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.primaryColor1,width: 3),
                ),
                child: CircleAvatar(
                  maxRadius: 6,
                  backgroundColor: Styles.primaryColor1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
