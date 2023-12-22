
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_project/preview.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Center(
              child: Text(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFF4D67),
                    ),
                  ),
                  'Add Details'),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      'Select Cover'),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              width: screenWidth * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.06,
                      horizontal: screenWidth * 0.04),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFFF4D67)
                    ),
                  ),
                  border: InputBorder.none,
                  suffixIcon:  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.1),
                    child: const Icon(
                          color: Color(0xFFFF4D67),
                            Icons.add_box_outlined),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      'Add Title'),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              width: screenWidth * 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.04,
                      horizontal: screenWidth * 0.04),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xFFFF4D67)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      'Add Description'),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              width: screenWidth * 0.9,
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                      horizontal: screenWidth * 0.04),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xFFFF4D67)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      'Add hashtags'),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              child: TextField(
                style: const TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Color(0xFFFF4D67)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            SizedBox(
              height: screenHeight * 0.08,
              width: screenWidth * 0.9,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.03),),),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFFFF4D67),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => const PreView(),),
                  );
                },
                child: Text(
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color(0xFFFFFFFF))),
                    'Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
