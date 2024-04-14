import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Widget myScreen;
  const AppDoubleTextWidget({super.key, required this.bigText, required this.smallText, required this.myScreen});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text(bigText,style: Styles.headLineStyle2,),
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) =>  myScreen));
              },
              child: Text(smallText,style:Styles.textStyle.copyWith(color: Styles.primaryColor1),))
        ]
    );
  }
}
