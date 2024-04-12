import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:bookingtickets/screens/bus_searches.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChooseSeat extends StatefulWidget {
  ChooseSeat({Key? key}) : super(key: key);

  @override
  State<ChooseSeat> createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  // var isBooked
  var countSeatLeft = 2 * 10;
  var countSeatRight = 2 * 10;
  var listSeatLeft = [];
  var listSeatRight = [];

  @override
  void initState() {
    //l for left, c for center , r for right
    //first param "listSeatLeft","listSeatCenter","listSeatRight" that similar like object temp that u want to save the data
    // second param is for like how many seat on every side
    // third param is for naming value every seat //look line 38
    initSeatValueToList(listSeatLeft, countSeatLeft, "l");
    initSeatValueToList(listSeatRight, countSeatRight, "r");
    setVisiblitySeat();
    super.initState();
  }

  initSeatValueToList(List data, count, side) {
    var objectData;
    //init variable to save your object data
    for (int i = 0; i < count; i++) {
      objectData = {
        "id": side + "${i + 1}",
        "isBooked": false,
        "isAvailable": true,
        "isSelected": false,
        "isVisible": true,
      };
      //this format object for every seat has
      setState(() {
        data.add(objectData);
        //add object to list
      });
    }
    print(data);
  }

  setVisiblitySeat() {
    setState(() {
      listSeatLeft[0]["isVisible"] = true; // left column index 0
      listSeatRight[0]["isVisible"] = true; // right column index 1
    });
    //this function to set where's the position of the seat that should be invisible
  }

  setSelectedToBooked() {
    listSeatLeft.forEach((seat) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    });
    listSeatRight.forEach((seat) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    });
    //this function to loop every side of seat, from selected to booked, u also can this function to send to u'r serves side
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const BusSearch()));
        return false; // Prevents the default behavior of going back to the previous screen
      },
      child: Scaffold(

        backgroundColor: Styles.bgColor,
        appBar: AppBar
        (
          title: Center(
              child: Text('Bus Seating Chart')),
          backgroundColor: Styles.secondaryColor,
          shadowColor: Colors.grey,
          leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => const BusSearch()));
                     },
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 15,top: 5),
              icon: CircleAvatar(
                child:  Icon(FluentSystemIcons.ic_fluent_home_regular,size: 20,color: Styles.bgColor,),
                backgroundColor: Styles.secondaryColor,

              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) => const BottomBar()));
              },
            ),
          ],
        ),
        // appBar: AppBar(
        //   systemOverlayStyle: SystemUiOverlayStyle.light,
        // ),

        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                  Icons.event_seat_rounded, color: Colors.redAccent,size: 40,), // Add the icon here
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Booked",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.event_seat_sharp, color: Colors.blueAccent,size: 40,), // Add the icon here
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Selected"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.event_seat_rounded, color: Colors.grey,size: 40,),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Available"),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                // height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widgetSeat(listSeatLeft, false),
                    SizedBox(
                      width: 80,
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    widgetSeat(listSeatRight, false),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setSelectedToBooked();
                },
                child: Text("Booking"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget widgetSeat(List dataSeat, bool isCenter) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the cross axis count to 2 for 2*10 arrangement
          childAspectRatio: 1.25, // Adjust this value as needed to maintain the aspect ratio of each child
          mainAxisSpacing: 24.0,
          crossAxisSpacing: 12.0,
        ),
        itemCount: dataSeat.length,
        itemBuilder: (BuildContext context, int index) {
          return Visibility(
            visible: dataSeat[index]["isVisible"],
            child: GestureDetector(
              onTap: () {
                setState(() {
                  dataSeat[index]["isSelected"] =
                  !dataSeat[index]["isSelected"];
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 5,left: 20),
                width: 50,
                height: 50,
                child: Icon(
                  size: 55.0,
                  dataSeat[index]["isBooked"]
                      ? Icons.event_seat_rounded
                      : (dataSeat[index]["isSelected"] ? Icons.event_seat_rounded : Icons.event_seat),
                  color: dataSeat[index]["isBooked"]
                      ? Colors.redAccent
                      : (dataSeat[index]["isSelected"] ? Colors.blueAccent : Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}