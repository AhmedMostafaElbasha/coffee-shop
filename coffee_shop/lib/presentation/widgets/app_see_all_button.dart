import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class AppSeeAllButton extends StatelessWidget {
  final Function onTap;

  AppSeeAllButton(this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: AppTextDisplay(
        translation: AppStrings.seeAllButton,
        textStyle: AppTextStyles.seeAll(),
      ),
    );
  }
}
