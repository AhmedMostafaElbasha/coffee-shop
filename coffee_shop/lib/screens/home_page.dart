import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilities/utilities.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = appHeight(context);
    double width = appWidth(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.05,
        ),
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome, Nadia',
                        style: GoogleFonts.varela(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF473D3A),
                        ),
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.0),
                          image: DecorationImage(
                            image: AssetImage('assets/model.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
