import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class AppTextStyles {
  TextStyle welcome() {
    return GoogleFonts.varela(
      color: AppColors.midDarkShadowRedOrange,
      fontSize: ScreenUtil().setSp(30),
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle grayText() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(17),
      fontWeight: FontWeight.w300,
      color: AppColors.midRedOrange,
    );
  }

  TextStyle subHeading() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(17),
      color: AppColors.midDarkShadowRedOrange,
    );
  }

  TextStyle seeAll() {
    return GoogleFonts.varela(
      color: AppColors.lightShadeRedOrange,
      fontSize: ScreenUtil().setSp(15),
    );
  }

  TextStyle shopName() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );
  }

  TextStyle coffeeName() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(32),
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );
  }

  TextStyle coffeeDescription() {
    return shopName();
  }

  TextStyle coffeePrice() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(25),
      fontWeight: FontWeight.bold,
      color: AppColors.midDarkShadeGreenCyan,
    );
  }

  TextStyle callToAction() {
    return shopName();
  }

  TextStyle coffeeDetailsHeading() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.bold,
      color: AppColors.shadeRedOrange,
    );
  }

  TextStyle coffeeItemDetails() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      color: AppColors.lightShadeRed,
    );
  }

  TextStyle nutritionInfoHeading() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      color: AppColors.lightShadeOrange,
    );
  }

  TextStyle nutritionInfoValue() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      fontWeight: FontWeight.bold,
      color: AppColors.shadeOfRedOrange,
    );
  }

  TextStyle coffeeNameOrderPage() {
    return GoogleFonts.varela(
      color: AppColors.white,
      fontSize: ScreenUtil().setSp(30),
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle coffeeOrderPageDetailInfo() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(13),
      color: AppColors.white,
    );
  }

  TextStyle ofFiveRateText() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(13),
      color: AppColors.anotherShadeRedOrange,
    );
  }

  TextStyle otherNumberOfVoters() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      color: AppColors.white,
    );
  }

  TextStyle ingredientName() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      color: AppColors.anotherLightShadeRed,
    );
  }
}
