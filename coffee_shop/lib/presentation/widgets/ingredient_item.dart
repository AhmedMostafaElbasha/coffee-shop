import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';
import '../../data/data.dart';

class IngredientItem extends StatelessWidget {
  final Ingredient ingredient;

  IngredientItem(this.ingredient);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setHeight(6),
      ),
      child: Column(
        children: [
          Container(
            height: ScreenUtil().setHeight(50),
            width: ScreenUtil().setWidth(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: ingredient.color,
            ),
            child: Center(
              child: Icon(
                ingredient.icon,
                size: 30.0,
                color: AppColors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(4),
            ),
            child: Container(
              width: ScreenUtil().setWidth(60),
              child: Center(
                child: AppTextDisplay(
                  textStyle: AppTextStyles.ingredientName(),
                  translation: ingredient.name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
