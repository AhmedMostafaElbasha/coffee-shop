import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class AppListTitleBar extends StatelessWidget {
  final String title;
  final Function onTap;

  AppListTitleBar({
    @required this.title,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(16),
        bottom: ScreenUtil().setHeight(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextDisplay(
            translation: title,
            textStyle: AppTextStyles.subHeading(),
          ),
          // TODO See All Button
          AppSeeAllButton(onTap),
        ],
      ),
    );
  }
}
