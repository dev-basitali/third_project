import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_project/signUp.dart';

import 'buttom_nav.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1, vertical: screenHeight * 0.07),
              child: Text(
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: screenWidth * 0.1,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF000000)),
                  ),
                  'Welcome \nBack!',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08, vertical: screenHeight * 0.01),
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))
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
                            color: const Color(0xFFFF4D67)),
                        child: const Icon(
                          Icons.mail,
                          color: Color(0xFFFFFFFF),
                          size: 20,
                        )),
                  ),
                  hintStyle: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F5B79),
                      )),
                  fillColor: const Color(0xFFF9F9F9),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08, vertical: screenHeight * 0.01),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFFF5F5F5))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  hintText: 'Type password here',
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Container(
                        height: screenHeight * 0.012,
                        width: screenWidth * 0.012,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(screenWidth * 0.06),
                            color: const Color(0xFFFF4D67)),
                        child: const Icon(
                          Icons.lock,
                          color: Color(0xFFFFFFFF),
                          size: 20,
                        )),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.025),
                    child: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  hintStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFC4C4C4),
                    ),
                  ),
                  fillColor: const Color(0xFFF9F9F9),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenWidth * 0.1),
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.85,
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => const ButtomNav())
                    );
                  },
                  child: Center(
                    child: Text(
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                        'Login'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                   vertical: screenHeight * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: screenWidth * 0.032,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF000000))),
                      'Forgot your password?'),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: screenWidth * 0.032,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF047EC3))),
                        ' Reset here'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: screenWidth * 0.032,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF000000))),
                      'Already have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => const SignUp())
                      );
                    },
                    child: Text(
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: screenWidth * 0.032,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFFF4D67))),
                        '  Signup'),
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
