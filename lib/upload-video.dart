
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_project/video-details.dart';

class UploadVideo extends StatefulWidget {
  const UploadVideo({super.key});

  @override
  State<UploadVideo> createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
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
              height: screenHeight * 0.05,
            ),
            Center(
              child: Text(
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFFF4D67),
                  ),
                ),
                  'Upload Video'),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Row(
                children: [
                  Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      'All Videos'),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (builder) => const AddDetails()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenWidth * 0.347,
                        height: screenHeight * 0.2,
                        color: const Color(0xFFD9D9D9),
                      ),
                      SizedBox(
                        height: screenHeight * 0.002,
                      ),
                      Container(
                        width: screenWidth * 0.347,
                        height: screenHeight * 0.2,
                        color: const Color(0xFFD9D9D9),
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.65,
                    height: screenHeight * 0.4,
                    color: const Color(0xFFD9D9D9),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.002,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: screenWidth * 0.347,
                      height: screenHeight * 0.2,
                      color: const Color(0xFFD9D9D9),
                    ),
                    SizedBox(
                      height: screenHeight * 0.002,
                    ),
                    Container(
                      width: screenWidth * 0.347,
                      height: screenHeight * 0.08,
                      color: const Color(0xFFD9D9D9),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: screenWidth * 0.347,
                      height: screenHeight * 0.2,
                      color: const Color(0xFFD9D9D9),
                    ),
                    SizedBox(
                      height: screenHeight * 0.002,
                    ),
                    Container(
                      width: screenWidth * 0.347,
                      height: screenHeight * 0.08,
                      color: const Color(0xFFD9D9D9),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.28,
                  color: const Color(0xFFD9D9D9),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
