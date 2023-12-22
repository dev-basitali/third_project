import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: screenHeight * 0.13,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.03),
          child: Text(
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.064,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFFF4D67),
                ),
              ),
              'Profile'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/profile.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08,
                  vertical: screenHeight * 0.02),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))),
                  filled: true,
                  hintText: 'David Kowalski',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Container(
                      height: screenHeight * 0.012,
                      width: screenWidth * 0.012,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.06),
                        color: const Color(0xFFFF4D67),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xFFFFFFFF),
                        size: 20,
                      ),
                    ),
                  ),
                  hintStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4F5B79),
                  )),
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08,
                  vertical: screenHeight * 0.01),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight * 0.025),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  hintText: 'davidkowalski@mail.com',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Container(
                        height: screenHeight * 0.012,
                        width: screenWidth * 0.012,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.06),
                          color: const Color(0xFFFF4D67),
                        ),
                        child: const Icon(
                          Icons.mail,
                          color: Color(0xFFFFFFFF),
                          size: 20,
                        )),
                  ),
                  hintStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4F5B79),
                    ),
                  ),
                  fillColor: const Color(0xFFF5F5F5),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.85,
                color: const Color(0xFFF5F5F5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          hintText: 'http://name.com//',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w300,
                              color: const Color(0x91161C22),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                          ),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          fillColor: const Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF4D67),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'share',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.04,
                        color: const Color(0xFF000000),
                      )),
                      'Payment Method'),
                  Icon(
                      color: const Color(0xFF788292),
                      size: screenWidth * 0.03,
                      Icons.arrow_forward_ios),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.04,
                        color: const Color(0xFF000000),
                      )),
                      'Language'),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.02),
                        child: Text(
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.04,
                              color: const Color(0xFF000000),
                            )),
                            'English'),
                      ),
                      Icon(
                          color: const Color(0xFF788292),
                          size: screenWidth * 0.03,
                          Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.38,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.03),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF4D67),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.05,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          'Save'),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.38,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.03),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF788292),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.05,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          'Cancel'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
