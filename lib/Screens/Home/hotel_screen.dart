import 'package:bookingtickets/utils/app_layout.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
   const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.65,
      height:350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 20,top: 6),
      decoration: BoxDecoration(
        color: Styles.primaryColor1,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Styles.bgColor,
            blurRadius: 25,
            spreadRadius: 15,
            offset: const Offset(0, 10),
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor1,
              image: DecorationImage(
                image: AssetImage('images/${hotel['image']}'),
                fit: BoxFit.cover,
              ),
              )
            ),
          const Gap(10),
          Text(
              hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Colors.black87),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
