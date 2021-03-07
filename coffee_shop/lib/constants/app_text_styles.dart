import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class AppTextStyles {
  static TextStyle welcome() {
    return GoogleFonts.varela(
      color: AppColors.midDarkShadowRedOrange,
      fontSize: ScreenUtil().setSp(30),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle grayText() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(17),
      fontWeight: FontWeight.w400,
      color: AppColors.midRedOrange,
    );
  }

  static TextStyle subHeading() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(17),
      fontWeight: FontWeight.w600,
      color: AppColors.midDarkShadowRedOrange,
    );
  }

  static TextStyle seeAll() {
    return GoogleFonts.varela(
      color: AppColors.lightShadeRedOrange,
      fontSize: ScreenUtil().setSp(15),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle shopName() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );
  }

  static TextStyle coffeeName() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(32),
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );
  }

  static TextStyle coffeeDescription() {
    return shopName();
  }

  static TextStyle coffeePrice() {
    return GoogleFonts.varela(
      fontSize: ScreenUtil().setSp(25),
      fontWeight: FontWeight.bold,
      color: AppColors.midDarkShadeGreenCyan,
    );
  }

  static TextStyle callToAction() {
    return shopName();
  }

  static TextStyle coffeeDetailsHeading() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.w800,
      color: AppColors.shadeRedOrange,
    );
  }

  static TextStyle coffeeItemDetails() {
    return GoogleFonts.nunito(
        fontSize: ScreenUtil().setSp(14),
        color: AppColors.lightShadeRed,
        fontWeight: FontWeight.w600);
  }

  static TextStyle nutritionInfoHeading() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(14),
      fontWeight: FontWeight.w800,
      color: AppColors.lightShadeOrange,
    );
  }

  static TextStyle nutritionInfoValue() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      fontWeight: FontWeight.w800,
      color: AppColors.shadeOfRedOrange,
    );
  }

  static TextStyle coffeeNameOrderPage() {
    return GoogleFonts.varela(
      color: AppColors.white,
      fontSize: ScreenUtil().setSp(30),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle coffeeOrderPageDetailInfo() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(13),
      height: 1.6,
      color: AppColors.white,
    );
  }

  static TextStyle voteRate() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(16),
      color: AppColors.white,
    );
  }

  static TextStyle ofFiveRateText() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(16),
      color: AppColors.anotherShadeRedOrange,
    );
  }

  static TextStyle otherNumberOfVoters() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      color: AppColors.white,
    );
  }

  static TextStyle ingredientName() {
    return GoogleFonts.nunito(
      fontSize: ScreenUtil().setSp(12),
      fontWeight: FontWeight.w600,
      color: AppColors.anotherLightShadeRed,
    );
  }
}
