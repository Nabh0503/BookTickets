import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout({super.key,required this.firstText,required this.secondText,required this.alignment,this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,

      children: [
        Text(firstText,style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        const Gap(3),
        Text(secondText,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}
