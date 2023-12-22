
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';

class Notifications extends StatelessWidget {
  List<CustomList> item = [
    CustomList("Service Complete!", "Your service has been completed! Give \n barber ratings for improvement"),
    CustomList("Booking Success", "Your booking was successfully ordered! \nWait for the next queue notification"),
    CustomList("Booking Success", "Your booking was successfully ordered! \nWait for the next queue notification"),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.13,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.03),
          child: Text(
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.074,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFF4D67),
                ),
              ),
              'Notifications'),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
          itemBuilder: (context , index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
          child: Card(
            color: const Color(0xFFFFFFFF),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child: ListTile(
                leading: const CircleAvatar(
                    backgroundImage:AssetImage('assets/Group 275.png'),
                ),
                title: Text(
                  style: GoogleFonts.dmSans(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF1F1F1F),
                    ),
                  ),
                    item[index].title),

                subtitle: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.007),
                  child: Text(
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF857F7E),
                        ),
                      ),
                      item[index].description),
                ),
              ),
            ),
          ),
        );
      }
      ),
    );
  }
}
