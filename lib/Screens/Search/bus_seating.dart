import 'package:bookingtickets/screens/Search/bus_searches.dart';
import 'package:bookingtickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

enum SeatStatus { available, selected, occupied }

class Seat {
  SeatStatus status;

  Seat({this.status = SeatStatus.available});
}

class SeatWidget extends StatefulWidget {
  final Seat seat;

  SeatWidget({required this.seat});

  @override
  _SeatWidgetState createState() => _SeatWidgetState();
}

class _SeatWidgetState extends State<SeatWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.seat.status == SeatStatus.available) {
          setState(() {
            widget.seat.status = SeatStatus.selected;
          });
        } else if (widget.seat.status == SeatStatus.selected) {
          setState(() {
            widget.seat.status = SeatStatus.available;
          });
        }
      },
      child: Icon(
        size: 50.0,
        widget.seat.status == SeatStatus.available
            ? Icons.event_seat_outlined
            : (widget.seat.status == SeatStatus.selected ? Icons.event_seat_rounded:Icons.event_seat_outlined ),
        color: widget.seat.status == SeatStatus.available
            ? Colors.blue
            : (widget.seat.status == SeatStatus.selected ? Colors.red : Colors.blue),
      ),
    );
  }
}



class BusSeating extends StatelessWidget {
  final List<List<Seat>> seats;
  const BusSeating({super.key, required this.seats});

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
        appBar: AppBar(
          title: const Text('Bus Seating Layout'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(18.0),
          itemCount: seats.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.35,
            mainAxisSpacing: 9.0,
            crossAxisSpacing: 10.0,
          ),

          itemBuilder: (context, index) {
            int row = index ~/ 4;
            int column = index % 4;

            if (column == 4 || column == 6) {
              // This is the aisle
              return SizedBox.shrink();
            } else {
              return SeatWidget(seat: seats[row][column]);
            }
          },
        ),
      ),
    );
  }
}
