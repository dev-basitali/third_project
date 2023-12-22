import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_project/upload-video.dart';

class YourVideos extends StatefulWidget {
  const YourVideos({super.key});

  @override
  State<YourVideos> createState() => _YourVideosState();
}

class _YourVideosState extends State<YourVideos> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight * 0.11,
        title: Text(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: screenWidth * 0.077,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFFF4D67),
              ),
            ),
            'Your Videos'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.05),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (builder) => const UploadVideo())
                    );
                  },
                  child: Text(
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.043,
                          color: const Color(0xFFFF4D67),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFFFF4D67),
                        ),
                      ),
                      'Upload Video'),
                ),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.4, right: screenWidth * 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    'Views'),
                Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    'Comments'),
                Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    'Likes(vs dislikes)'),
              ],
            ),
          ),
          const Divider(),
          CustomRowComponent(
            iconData: Icons.check_box_outline_blank,
            imagePath: 'assets/pic 1.png',
            text1: '6, 000',
            text2: '46',
            text3: '92%',
            text4: 'Date Published:',
            text5: '12, March, 2020',
          ),
          const Divider(),
          CustomRowComponent(
            iconData: Icons.check_box_outline_blank,

            imagePath: 'assets/pic 2.png',
            text1: '6, 000',
            text2: '46',
            text3: '92%',
            text4: '',
            text5: '',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

// --------------------------- Custom Component -------------------------------------------- //

class CustomRowComponent extends StatelessWidget {
  IconData iconData;
  String imagePath;
  String text1;
  String text2;
  String text3;
  String? text4;
  String? text5;

  CustomRowComponent({super.key,
    required this.iconData,
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
    this.text4,
    this.text5,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Asset Image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                size: 30.0,
                color: const Color(0xFFD9D9D9),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
              ),
            ),
            SizedBox(
              width: screenWidth * 0.055,
            ),
            Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: screenWidth * 0.032,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF788292)
                  ),
                ),
                text1),
            SizedBox(
              width: screenWidth * 0.11,
            ),
            Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: screenWidth * 0.032,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF788292)
                  ),
                ),
                text2),
            SizedBox(
              width: screenWidth * 0.2,
            ),
            Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: screenWidth * 0.032,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF788292)
                  ),
                ),
                text3)
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF000000)
                  ),
                ),
                  text4!),
              Text(
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: screenWidth * 0.02,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF788292)
                    ),
                  ),
                  text5!),
            ],
          ),
        ),
      ],
    );
  }
}
