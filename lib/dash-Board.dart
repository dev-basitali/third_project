import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_project/subscription-plan.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.1,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.012, top: screenHeight * 0.01),
            child: Text(
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w700),
                ),
                'David Kowalski'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  color: const Color(0xFF21242D),
                ),
                height: screenWidth * 0.13,
                width: screenWidth * 1,
                child: Center(
                  child: Text(
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: screenWidth * 0.042,
                            color: const Color(0xFFFFFFFF)),
                      ),
                      'Here’s how you’re doing'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  color: const Color(0xFF21242D),
                ),
                height: screenWidth * 0.45,
                width: screenWidth * 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.027,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.1),
                          child: Text(
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: const Color(0xFFFFFFFF)),
                              ),
                              'Total Earnings'),
                        ),
                        SizedBox(
                          width: screenWidth * 0.5,
                        ),
                        Text(
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: const Color(0xFFFFFFFF)),
                            ),
                            '\$200'),
                      ],
                    ),
                    SizedBox(
                      height: screenWidth * 0.05,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.1),
                          child: Text(
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: const Color(0xFFFFFFFF)),
                              ),
                              'Total Withdrawal'),
                        ),
                        SizedBox(
                          width: screenWidth * 0.46,
                        ),
                        Text(
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: const Color(0xFFFFFFFF)),
                            ),
                            '\$200'),
                      ],
                    ),
                    SizedBox(
                      height: screenWidth * 0.05,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.1),
                          child: Text(
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: const Color(0xFFFFFFFF)),
                              ),
                              'Available for Withdrawal'),
                        ),
                        SizedBox(
                          width: screenWidth * 0.35,
                        ),
                        Text(
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: const Color(0xFFFFFFFF)),
                            ),
                            '\$200'),
                      ],
                    ),
                    SizedBox(
                      height: screenWidth * 0.05,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.1),
                          child: Text(
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: const Color(0xFFFFFFFF)),
                              ),
                              'Earnings in May'),
                        ),
                        SizedBox(
                          width: screenWidth * 0.48,
                        ),
                        Text(
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: const Color(0xFFFFFFFF)),
                            ),
                            '\$200'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: screenWidth * 0.13,
                width: screenWidth * 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => const SubscriptionPlan())
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF21242D),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.2,
                      ),
                      Text(
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          'Subscription Plan'),
                      SizedBox(
                        width: screenWidth * 0.3,
                      ),
                      const Icon(
                          color: Color(0xFFFFFFFF), Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.045,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.07,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      'Total Videos'),
                  SizedBox(
                    width: screenWidth * 0.69,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      '3'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, right: screenWidth * 0.07),
                child: const Divider(
                  color: Color(0x14000000),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.016,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.07,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      'Total Views'),
                  SizedBox(
                    width: screenWidth * 0.66,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      '6.2k'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, right: screenWidth * 0.07),
                child: const Divider(
                  color: Color(0x14000000),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.016,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.07,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      'Total Comments'),
                  SizedBox(
                    width: screenWidth * 0.6,
                  ),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      '100'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07, right: screenWidth * 0.07),
                child: const Divider(
                  color: Color(0x14000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
