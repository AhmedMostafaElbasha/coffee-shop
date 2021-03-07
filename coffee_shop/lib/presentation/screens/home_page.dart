import 'package:coffee_shop/presentation/widgets/taste_of_the_week_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/presentation.dart';
import '../../constants/constants.dart';
import '../../data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(16),
          // bottom: ScreenUtil().setHeight(16),
          left: ScreenUtil().setWidth(16),
        ),
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _displayHomeHeading(),
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(34),
                  ),
                  child: AppListTitleBar(
                    title: AppStrings.tasteOfTheWeekTitle,
                    onTap: () {},
                  ),
                ),
                _displayTasteOfWeek(),
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(16),
                  ),
                  child: AppListTitleBar(
                    title: AppStrings.exploreNearbyTitle,
                    onTap: () {},
                  ),
                ),
                _displayExploreNearby(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _welcomeBar() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(30),
        right: ScreenUtil().setWidth(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextDisplay(
            translation: AppStrings.welcomeStatement,
            textStyle: AppTextStyles.welcome(),
          ),
          Container(
            height: ScreenUtil().setHeight(45),
            width: ScreenUtil().setWidth(45),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: AssetImage(AppImagePaths.model),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayHomeHeading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _welcomeBar(),
        Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(8),
            right: ScreenUtil().setHeight(55.0),
          ),
          child: AppTextDisplay(
            translation: AppStrings.servingHeading,
            textStyle: AppTextStyles.grayText(),
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _displayTasteOfWeek() {
    return Container(
      height: ScreenUtil().setHeight(410),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tasteOfTheWeekItems.length,
        itemBuilder: (context, index) {
          return TasteOfTheWeekItem(tasteOfTheWeekItems[index]);
        },
      ),
    );
  }

  Widget _displayExploreNearby() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(6),
      ),
      child: Container(
        height: ScreenUtil().setHeight(125),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: exploreNearbyItems.length,
          itemBuilder: (context, index) {
            return ExploreNearbyItem(exploreNearbyItems[index]);
          },
        ),
      ),
    );
  }
}
