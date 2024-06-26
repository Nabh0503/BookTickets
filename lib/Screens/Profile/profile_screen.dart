import 'package:bookingtickets/utils/app_styles.dart';
import 'package:bookingtickets/widgets/column_layout.dart';
import 'package:bookingtickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
        return false; // Prevents the default behavior of going back to the previous screen
      },

      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children:[
            const Gap(40),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image:AssetImage('images/logo.png'),
                    )
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Book Tickets',style: Styles.headLineStyle1.copyWith(fontSize: 28),),
                    const Text('New-York',style:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                    ) ),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                      child: Row(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color:Color(0xFF13B463),
                            ),
                            child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,size: 15,),
                          ),
                          const Gap(5),
                          const Text("Premium Status",style:TextStyle(
                            color: Color(0xFF526799),fontWeight: FontWeight.w600
                          ),),
                          const Gap(5),
                        ]
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(

                  children:[
                    InkWell(
                      onTap: (){
                      },
                      child: Text(
                        'Edit',
                        style:Styles.textStyle.copyWith(color: const Color(0xFF13B463),fontWeight: FontWeight.w400),),
                    ),
                  ]
                )
              ],
            ),
            const Gap(8),
            Divider(color: Colors.grey.shade300,),
            const Gap(8),
            Stack(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor1,
                    borderRadius: BorderRadius.circular(18),
                  )
                ),
                Positioned(
                    right: -45,top:-40,
                    child:Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color:Colors.black87),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color:Styles.primaryColor1,size: 30,),
                      ),
                      const Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've achieved an award !",
                            style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "You have 50 bus trips this year.",
                            style: Styles.headLineStyle2.copyWith(color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.bold,fontSize: 16),
                          )
                        ],
                      )
                    ]
                  ),
                )
              ],
            ),
            const Gap(25),
            Text("Accumulated Miles", style:Styles.headLineStyle2,),
            const Gap(20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                color: Styles.bgColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20,
                    spreadRadius: 0,
                    offset: const Offset(1, 1)
                  )
                ]
              ),
              child: Column(
                children: [
                  Text("192802"
                  ,style:TextStyle(
                        fontSize:45,color:Styles.textColor,fontWeight: FontWeight.w600
                      )
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Miles accrued",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                      Text("11 April 2024", style: Styles.headLineStyle4.copyWith(fontSize: 16,color: Colors.white),)
                    ]
                  ),
                  const Gap(4),
                  Divider(color: Colors.grey.shade300,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor: null),
                      AppColumnLayout(firstText: "RedBus", secondText: "Recieved from", alignment: CrossAxisAlignment.end,isColor: null),
                    ],
                  ),
                  const Gap(12),
                  const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                  const Gap(12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor: null),
                      AppColumnLayout(firstText: "NueGo", secondText: "Recieved from", alignment: CrossAxisAlignment.end,isColor: null),
                    ],
                  ),
                  const Gap(12),
                  const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                  const Gap(12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor: null),
                      AppColumnLayout(firstText: "Goibibo", secondText: "Recieved from", alignment: CrossAxisAlignment.end,isColor: null),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20),
            InkWell(
              onTap: (){
              },
              child: Center(
                child: Text(
                  "How to get more miles?",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor1,fontWeight: FontWeight.w600),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
