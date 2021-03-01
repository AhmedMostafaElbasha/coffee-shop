import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(16),
            bottom: ScreenUtil().setHeight(16),
            left: ScreenUtil().setWidth(16),
          ),
          child: Container(),
        ),
      ),
    );
  }
}
