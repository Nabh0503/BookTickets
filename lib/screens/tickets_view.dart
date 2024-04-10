import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key,required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left:16,right: 16,top: 16),
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
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction:Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/7).floor(), (index) => SizedBox(
                                  width:3,height: 1,child: DecoratedBox(decoration: BoxDecoration(
                                    color: isColor==null? Colors.white:Colors.grey.shade300),
                                ),),
                                )
                              );
                            },
                          )
                        ),
                          Center(child: Icon(Icons.directions_bus,color:isColor==null? Colors.white:Color(0xFFBACCF7),)),
                        ],
                      )),

                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),

                      Text(ticket['to']['code'],style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        width: 100,child: Text(ticket['from']['name'],style:Styles.headLineStyle4.copyWith(color: Colors.white),)
                      ),
                      Center(child: Text(ticket['flying_time'],style:Styles.headLineStyle4.copyWith(color: Colors.white),)),
                      SizedBox(
                          width: 100,child: Text(ticket['to']['name'],textAlign: TextAlign.end,style:Styles.headLineStyle4.copyWith(color: Colors.white),)
                      ),
                    ]
                  )
                ],
              )
            ),
            //showing the orange card of the ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      )
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            width:5,height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                        decoration:BoxDecoration(
                            color: Colors.white,
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
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))
              ),
                padding:  const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                          style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(3),
                          Text("Date",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(3),
                          Text("Departure Time",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(3),
                          Text("Number",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
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
