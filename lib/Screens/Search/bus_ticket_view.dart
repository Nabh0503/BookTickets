import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/layout_builder_widget.dart';
import 'package:bookingtickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class BusTicket extends StatelessWidget {
  final Map<String,dynamic> busticket;
  final bool? isColor;
  const BusTicket({super.key,required this.busticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
     return SizedBox(
      width: size.width*0.9,
      height: GetPlatform.isIOS==true? 180:185,
      child: Container(
        decoration: BoxDecoration(
          // color: isColor==null? Color(0xFF526799):Colors.white,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
              topRight: Radius.circular(21)),
          boxShadow: [
            BoxShadow(
                color: Styles.primaryColor1,
                blurRadius: 20,
                spreadRadius: 1,
                offset: const Offset(0, 0) // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(left:12,right: 12,top: 5),
        child: Column(
          children: [
            //showing the blue card of the ticket
            Container(
                decoration: BoxDecoration(
                  color: isColor==null? const Color(0xFF526799):Colors.white,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(busticket['from']['dp_time'],
                            style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                        const Gap(1),
                        Icon(Icons.remove, color: isColor==null? Colors.white:const Color(0xFFBACCF7)), // Dash icon
                        const Gap(1),
                        Text(busticket['from']['arr_time'],
                          style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                        Expanded(child: Container()),
                        Expanded(child: Container()),
                        const ThickContainer(isColor: true,),
                        Expanded(child: Stack(
                          children: [
                            const SizedBox(
                                height: 25,
                                child: AppLayoutBuilderWidget(sections: 5,)
                            ),
                            Center(child: Icon(Icons.directions_bus,color:isColor==null? Colors.black:const Color(0xFF13B463),)),
                          ],
                        )),
                        const ThickContainer(isColor: true),
                      ],
                    ),
                    Row(
                        children:[
                          Text(busticket['seats']['time'],
                              style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle6),
                          const Gap(2),
                          Icon(Icons.circle,size: 8, color: isColor==null? Colors.white:const Color(0xFF13B463)), // Dash icon
                          const Gap(2),
                          Text(busticket['seats']['total'],
                            style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle6,),
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
                      height: 10,width: 10,
                      child: DecoratedBox(
                          decoration:BoxDecoration(
                              color: isColor==null? Colors.grey.shade300:Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              )
                          )
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(1.0),
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
                              borderRadius: const BorderRadius.only(
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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:21),
                      bottomRight: Radius.circular(isColor==null?21:21))
              ),
              padding:  const EdgeInsets.only(left: 16,right: 16,top: 5,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        AppColumnLayout(
                          firstText: busticket['Rating']['rating'].toString(),
                          secondText:busticket['Rating']['total'].toString(),
                          alignment: CrossAxisAlignment.start,isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: busticket['bus_operator']['name'],
                          secondText:busticket['bus_operator']['bus_type'],
                          alignment: CrossAxisAlignment.center,isColor: isColor,
                        ),

                        AppColumnLayout(
                          firstText: busticket['price']['total'],
                          secondText:busticket['price']['discount'],
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
