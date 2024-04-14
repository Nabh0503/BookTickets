import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) =>  const BottomBar(),
      ));
    });
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Styles.primaryColor1,
              Styles.primaryColor1,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
           // SizedBox(height: 5),
            // Text("Bus Booking",
            //   style: TextStyle(
            //     fontStyle: FontStyle.italic,
            //       fontSize: 30, color: Colors.white
            //   ),
            // ),
          ],
        )
      )
    );
  }
}
