import 'package:coffee_shop/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';

class ExploreNearbyItem extends StatelessWidget {
  final ExploreNearby exploreNearbyItem;

  ExploreNearbyItem(this.exploreNearbyItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(16),
      ),
      child: Container(
        height: ScreenUtil().setHeight(100),
        width: ScreenUtil().setWidth(175),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(exploreNearbyItem.imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
