import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/layout_builder_widget.dart';
import 'package:bookingtickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key,required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: GetPlatform.isIOS==true? 180:193,
      child: Container(
        margin: const EdgeInsets.only(left:10,right: 10,top: 12),
        child: Column(
          children: [
            //showing the blue card of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),

                      Expanded(child: Container()),

                      const ThickContainer(isColor: true,),

                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: 26,
                          child: AppLayoutBuilderWidget(sections: 7,)
                        ),
                          Center(child: Icon(Icons.directions_bus,color:isColor==null? Colors.white:Color(0xFFBACCF7),)),
                        ],
                      )),

                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),

                      Text(ticket['to']['code'],style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,)
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        width: 100,child: Text(ticket['from']['name'],style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      ),
                      Center(child: Text(ticket['flying_time'],style:isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)),
                      SizedBox(
                          width: 100,child: Text(ticket['to']['name'],textAlign: TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      ),
                    ]
                  )
                ],
              )
            ),
            //showing the orange card of the ticket
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                      decoration:BoxDecoration(
                        color: isColor==null? Colors.grey.shade300:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      )
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width:5,height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor==null?Colors.white:Colors.grey.shade300
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                   SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                        decoration:BoxDecoration(
                            color: isColor==null? Colors.grey.shade200:Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)
                            )
                        )
                    ),
                  )
                ]
              ),
            ),
            //showing the bottom orange card of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0))
              ),
                padding:  const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[

                      AppColumnLayout(
                        firstText: ticket['date'].toString(),
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,isColor: isColor,
                      ),

                      AppColumnLayout(
                        firstText: ticket['departure_time'].toString(),
                        secondText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,isColor: isColor,
                      ),

                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,isColor: isColor,
                      ),

                    ]
                  )
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
