import 'package:coffee_shop/data/dummies/ingredient_items.dart';
import 'package:coffee_shop/presentation/presentation.dart';
import 'package:coffee_shop/presentation/widgets/ingredient_item.dart';
import 'package:coffee_shop/utilities/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightShadePinkRed,
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(16),
          // bottom: ScreenUtil().setHeight(16),
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: ScreenUtil().screenHeight,
                  width: ScreenUtil().screenWidth,
                  color: AppColors.lightShadePinkRed,
                ),
              ),
              // Modal Sheet
              _displayCoffeeDetailsModalSheet(),
              // Modal Sheet Content
              _displayCoffeeDetails(context),
              _displayCoffeeImage(),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: ScreenUtil().setHeight(300),
                  width: ScreenUtil().setWidth(250),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _displayCoffeeName(),
                          _displayFavoriteButton(),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(6),
                        ),
                        child: Container(
                          width: ScreenUtil().setWidth(170),
                          child: AppTextDisplay(
                            textStyle:
                                AppTextStyles.coffeeOrderPageDetailInfo(),
                            translation:
                                AppStrings.coffeeDescriptionOrderScreen,
                            maxLines: 6,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(16),
                        ),
                        child: Row(
                          children: [
                            _displayVoteRatio(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _displayVotesBar(),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(0.5),
                                    left: ScreenUtil().setWidth(12),
                                  ),
                                  child: AppTextDisplay(
                                    text:
                                        '+ 27${AppLocalizations.of(context).translate("more")}',
                                    textStyle:
                                        AppTextStyles.otherNumberOfVoters(),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _displayVotesBar() {
    return Stack(
      children: [
        Container(
          height: ScreenUtil().setHeight(30),
          width: ScreenUtil().setWidth(80),
        ),
        Positioned(
          left: 10.0,
          child: _displayVoterImage(AppImagePaths.man),
        ),
        Positioned(
          left: 30,
          child: _displayVoterImage(AppImagePaths.model),
        ),
        Positioned(
          left: 50,
          child: _displayVoterImage(AppImagePaths.model2),
        ),
      ],
    );
  }

  Container _displayVoteRatio() {
    return Container(
      height: ScreenUtil().setHeight(45),
      width: ScreenUtil().setWidth(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: AppColors.midDarkShadowRedOrange,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextDisplay(
              textStyle: AppTextStyles.voteRate(),
              text: '4.2',
            ),
            Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(8)),
              child: AppTextDisplay(
                textStyle: AppTextStyles.ofFiveRateText(),
                text: '/5',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayVoterImage(String imagePath) {
    return Container(
      height: ScreenUtil().setHeight(26),
      width: ScreenUtil().setWidth(26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.lightShadePinkRed,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _displayFavoriteButton() {
    return Container(
      height: ScreenUtil().setHeight(40),
      width: ScreenUtil().setWidth(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: AppColors.white,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            AppIcons.favorite,
            color: isFavorite ? AppColors.red : AppColors.grey,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
      ),
    );
  }

  Widget _displayCoffeeName() {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(12),
      ),
      child: Container(
        width: ScreenUtil().setWidth(170),
        child: AppTextDisplay(
          textStyle: AppTextStyles.coffeeNameOrderPage(),
          translation: AppStrings.caramelMacchiato,
          maxLines: 2,
        ),
      ),
    );
  }

  Widget _displayCoffeeDetailsModalSheet() {
    return Positioned(
      top: ScreenUtil().screenHeight * 0.4,
      child: Container(
        height: (ScreenUtil().screenHeight * 0.62) - 20.0,
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _displayCoffeeDetails(BuildContext context) {
    return Positioned(
      top: (ScreenUtil().screenHeight * 0.4) + 25.0,
      left: ScreenUtil().setWidth(20),
      child: Container(
        height: (ScreenUtil().screenHeight * 0.66) - 50.0,
        width: ScreenUtil().screenWidth,
        child: ListView(
          children: [
            _displayCoffeeDetailsHeading(
              AppStrings.preparationTimeHeading,
            ),
            _displayCoffeeDetailsText(
              '${5.toString()}${AppLocalizations.of(context).translate(AppStrings.minute)}',
            ),
            _displayCustomDivider(),
            _displayCoffeeDetailsHeading(
              AppStrings.ingredientsHeading,
            ),
            _displayIngredientsList(),
            _displayCustomDivider(),
            _displayCoffeeNutritionDetails(context),
            _displayCustomDivider(),
            _displayOrderNowButton(),
          ],
        ),
      ),
    );
  }

  Widget _displayCoffeeImage() {
    return Positioned(
      top: ScreenUtil().screenHeight * 0.02,
      left: 98.0,
      child: Container(
        height: ScreenUtil().setHeight(400),
        width: ScreenUtil().setWidth(400),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImagePaths.pinkCup),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _displayOrderNowButton() {
    return Padding(
      padding: EdgeInsets.only(
          right: ScreenUtil().setWidth(46),
          left: ScreenUtil().setWidth(14),
          bottom: ScreenUtil().setHeight(36)),
      child: AppRoundedButton(
        height: ScreenUtil().setHeight(38),
        width: ScreenUtil().screenWidth - 100,
        text: AppStrings.makeOrderButton,
        onTap: () {},
      ),
    );
  }

  Widget _displayCoffeeNutritionDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _displayCoffeeDetailsHeading(
          AppStrings.nutritionInformationHeading,
        ),
        Row(
          children: [
            _displayNutritionInfoHeading(AppStrings.caloriesNutritionHeading),
            _displayNutritionInfoValue(value: '250'),
          ],
        ),
        Row(
          children: [
            _displayNutritionInfoHeading(AppStrings.proteinsNutritionHeading),
            _displayNutritionInfoValue(
              value:
                  '${10}${AppLocalizations.of(context).translate(AppStrings.gram)}',
            ),
          ],
        ),
        Row(
          children: [
            _displayNutritionInfoHeading(AppStrings.caffeineNutritionHeading),
            _displayNutritionInfoValue(
              value:
                  '${150}${AppLocalizations.of(context).translate(AppStrings.milegram)}',
            ),
          ],
        ),
      ],
    );
  }

  Widget _displayCoffeeDetailsHeading(String value) {
    return AppTextDisplay(
      textStyle: AppTextStyles.coffeeDetailsHeading(),
      translation: value,
    );
  }

  Widget _displayCoffeeDetailsText(String value) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(4),
      ),
      child: AppTextDisplay(
        textStyle: AppTextStyles.coffeeItemDetails(),
        text: value,
      ),
    );
  }

  Widget _displayCustomDivider() {
    return Padding(
      padding: EdgeInsets.only(
        right: ScreenUtil().setWidth(46),
        top: ScreenUtil().setHeight(16),
        bottom: ScreenUtil().setHeight(16),
      ),
      child: Container(
        height: ScreenUtil().setHeight(0.5),
        color: AppColors.lightShadeRed,
      ),
    );
  }

  Widget _displayIngredientsList() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(16),
      ),
      child: Container(
        height: ScreenUtil().setHeight(86),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ingredientItems.length,
          itemBuilder: (context, index) {
            return IngredientItem(ingredientItems[index]);
          },
        ),
      ),
    );
  }

  Widget _displayNutritionInfoHeading(String value) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(6),
        right: ScreenUtil().setWidth(8),
      ),
      child: AppTextDisplay(
        translation: value,
        textStyle: AppTextStyles.nutritionInfoHeading(),
      ),
    );
  }

  Widget _displayNutritionInfoValue({String value}) {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(6)),
      child: AppTextDisplay(
        text: value,
        textStyle: AppTextStyles.nutritionInfoValue(),
      ),
    );
  }
}
