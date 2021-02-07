import 'package:flutter/material.dart';
import '../utilities/utilities.dart';

class DetailsPage extends StatelessWidget {
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
          ),
        ),
      ),
    );
  }
}
