import 'package:bookingtickets/screens/bottom_bar.dart';
import 'package:bookingtickets/screens/Search/bus_searches.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ChooseSeat extends StatefulWidget {
  const ChooseSeat({super.key});

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
    setVisibilitySeat();
    super.initState();
  }

  initSeatValueToList(List data, count, side) {
    Map<String, dynamic> objectData;
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
  }

  setVisibilitySeat() {
    setState(() {
      listSeatLeft[0]["isVisible"] = true; // left column index 0
      listSeatRight[0]["isVisible"] = true; // right column index 1
    });
    //this function to set where's the position of the seat that should be invisible
  }

  setSelectedToBooked() {
    for (var seat in listSeatLeft) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    }
    for (var seat in listSeatRight) {
      if (seat["isSelected"]) {
        setState(() {
          seat["isBooked"] = true;
        });
      }
    }
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
          title: const Center(
              child: Text('Bus Seating Chart')),
          backgroundColor: Styles.primaryColor1,
          shadowColor: Colors.grey,
          leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => const BusSearch()));
                     },
          ),
          actions: <Widget>[
            IconButton(
              icon: CircleAvatar(
                backgroundColor: Styles.primaryColor1,
                child:  Icon(FluentSystemIcons.ic_fluent_home_regular,size: 20,color: Styles.textColor,),

              ),
              padding: const EdgeInsets.only(right: 15,top: 5),
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

        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Icon(
                                Icons.event_seat_rounded, color: Color(0xFF13B463),size: 40,), // Add the icon here
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child:  const Text(
                              "Booked",
                              style: TextStyle(
                                color: Color(0xFF13B463),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Icon(
                              Icons.event_seat_sharp, color: Colors.blueAccent,size: 40,), // Add the icon here
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text("Selected",
                                style: TextStyle(
                                color: Color(0xFF13B463),),
                            ),

                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Icon(
                              Icons.event_seat_rounded, color: Colors.white,size: 40,),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text("Available",
                              style: TextStyle(
                                color: Color(0xFF13B463),),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                // height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widgetSeat(listSeatLeft, false),
                    const SizedBox(
                      width: 110,
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    widgetSeat(listSeatRight, false),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setSelectedToBooked();
                },
                child: const Text("Book Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget widgetSeat(List dataSeat, bool isCenter) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the cross axis count to 2 for 2*10 arrangement
          childAspectRatio: 1.25, // Adjust this value as needed to maintain the aspect ratio of each child
          mainAxisSpacing: 24.0,
          crossAxisSpacing: 15.0,
        ),
        itemCount: dataSeat.length,
        itemBuilder: (BuildContext context, int index) {
          return Visibility(
            visible: dataSeat[index]["isVisible"],
            child: GestureDetector(
                onTap: () {
                  if (!dataSeat[index]["isBooked"]) {
                    setState(() {
                      dataSeat[index]["isSelected"] = !dataSeat[index]["isSelected"];
                    });
                  }
                },
              child: SizedBox(
                width: null,
                height: null,
                child: Icon(
                  size: 50.0,
                  dataSeat[index]["isBooked"]
                      ? Icons.event_seat_rounded
                      : (dataSeat[index]["isSelected"] ? Icons.event_seat_rounded : Icons.event_seat_outlined),
                  color: dataSeat[index]["isBooked"]
                      ? const Color(0xFF13B463)
                      : (dataSeat[index]["isSelected"] ? Colors.blueAccent : Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}