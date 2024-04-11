import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
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
            colors: const[
              Colors.blue,
              Color(0xFF133c8b),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/icon.png"),
            SizedBox(height: 5),
            Text("Bus Booking",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                  fontSize: 30, color: Colors.white
              ),
            ),
          ],
        )
      )
    );
  }
}
