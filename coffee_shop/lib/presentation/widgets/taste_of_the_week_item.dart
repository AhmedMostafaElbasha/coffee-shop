import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../presentation/presentation.dart';
import '../../constants/constants.dart';
import '../../data/data.dart';

class TasteOfTheWeekItem extends StatefulWidget {
  final TasteOfTheWeek tasteOfTheWeekItem;

  TasteOfTheWeekItem(this.tasteOfTheWeekItem);

  @override
  _TasteOfTheWeekItemState createState() => _TasteOfTheWeekItemState();
}

class _TasteOfTheWeekItemState extends State<TasteOfTheWeekItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
      ),
      child: Container(
        height: ScreenUtil().setHeight(300),
        width: ScreenUtil().setWidth(225),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ScreenUtil().setHeight(335),
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(8),
                      right: ScreenUtil().setWidth(16),
                    ),
                    height: ScreenUtil().setHeight(260),
                    width: ScreenUtil().setWidth(225),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.midLightShadeBrown,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(60),
                            ),
                            child: AppTextDisplay(
                              textStyle: AppTextStyles.shopName(),
                              text: '${widget.tasteOfTheWeekItem.shopName}\'s',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(6),
                            ),
                            child: AppTextDisplay(
                              textStyle: AppTextStyles.coffeeName(),
                              text: widget.tasteOfTheWeekItem.coffeeName,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(6),
                            ),
                            child: AppTextDisplay(
                              textStyle: AppTextStyles.coffeeDescription(),
                              translation:
                                  widget.tasteOfTheWeekItem.description,
                              maxLines: 4,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppTextDisplay(
                                  textStyle: AppTextStyles.coffeePrice(),
                                  text: '\$${widget.tasteOfTheWeekItem.price}',
                                ),
                                Container(
                                  height: ScreenUtil().setHeight(40),
                                  width: ScreenUtil().setWidth(40),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        AppIcons.favorite,
                                        color:
                                            widget.tasteOfTheWeekItem.isFavorite
                                                ? AppColors.red
                                                : AppColors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          widget.tasteOfTheWeekItem.isFavorite =
                                              !widget.tasteOfTheWeekItem
                                                  .isFavorite;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: ScreenUtil().setHeight(100),
                    width: ScreenUtil().setWidth(100),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.tasteOfTheWeekItem.imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(6),
              ),
              child: AppRoundedButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.order);
                },
                height: 50,
                width: 225,
                text: AppStrings.orderNowButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
