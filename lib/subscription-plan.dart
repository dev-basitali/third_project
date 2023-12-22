import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionPlan extends StatefulWidget {
  const SubscriptionPlan({super.key});

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {
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
              height: screenHeight * 0.015,
            ),
            Center(
              child: Text(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFF4D67),
                    ),
                  ),
                  'Subscribe to Our Plan'),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Center(
              child: Text(
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.028,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  'Lorem ipsum dolor sit amet, consecrate disciplining elite. \nAeneas ut urna at lorem pulvinar fringilla nec at justo.'),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.37,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                border: Border.all(
                  color: const Color(0xffFF4D67)
                ),
                borderRadius: BorderRadius.circular(screenWidth * 0.07),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Image.asset('assets/pic 3.png'),
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Text(
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF000000),
                    ),
                      'Business'),
                  SizedBox(
                    height: screenHeight * 0.001,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000),
                          ),
                          '\$29.99'),
                      Text(
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF000000),
                          ),
                          '/mo'),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.15,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.15,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.15,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  SizedBox(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.65,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.03))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF4D67),
                        ),
                      ),
                      onPressed: (){},
                      child: Text(
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: screenWidth *0.05,
                                  color: const Color(0xFFFFFFFF)
                              )
                          ),
                          'Buy now'),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.37,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                border: Border.all(
                    color: const Color(0xffFF4D67)
                ),
                borderRadius: BorderRadius.circular(screenWidth * 0.07),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Image.asset('assets/pic 3.png'),
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Text(
                      style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF000000),
                      ),
                      'Business'),
                  SizedBox(
                    height: screenHeight * 0.001,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000),
                          ),
                          '\$29.99'),
                      Text(
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF000000),
                          ),
                          '/mo'),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.013,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.12,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.15,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icon 2.png'),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.15,top: screenHeight * 0.01 ),
                          child: const Text('Lorem ipsum dolor sit amet'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  SizedBox(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.65,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(screenWidth * 0.03))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF4D67),
                        ),
                      ),
                      onPressed: (){},
                      child: Text(
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: screenWidth *0.05,
                                  color: const Color(0xFFFFFFFF)
                              )
                          ),
                          'Buy now'),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
