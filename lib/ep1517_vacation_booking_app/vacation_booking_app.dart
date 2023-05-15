import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1517_vacation_booking_app/view/vacation_home_screen.dart';

class VacationBookingApp extends StatelessWidget {
  const VacationBookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VacationHomeScreen(),
    );
  }
}
