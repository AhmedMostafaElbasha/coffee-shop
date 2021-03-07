import 'package:coffee_shop/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';

class AppRoundedButton extends StatelessWidget {
  final Function onTap;
  final double height;
  final double width;
  final String text;

  AppRoundedButton({
    this.onTap,
    @required this.height,
    @required this.width,
    @required this.text,
  })  : assert(height != null && width != null),
        assert(text.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: ScreenUtil().setHeight(height),
        width: ScreenUtil().setWidth(width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColors.midDarkShadowRedOrange,
        ),
        child: Center(
          child: AppTextDisplay(
            textStyle: AppTextStyles.callToAction(),
            translation: text,
          ),
        ),
      ),
    );
  }
}
