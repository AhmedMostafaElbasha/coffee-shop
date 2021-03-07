import '../../constants/constants.dart';
import 'package:coffee_shop/data/data.dart';
import 'package:flutter_icons/flutter_icons.dart';

var ingredientItems = [
  Ingredient(
    name: AppStrings.waterIngredient,
    icon: Feather.droplet,
    color: AppColors.midLightShadeCyan,
  ),
  Ingredient(
    name: AppStrings.brewedEspressoIngredient,
    icon: Feather.target,
    color: AppColors.midDarkShadeOrange,
  ),
  Ingredient(
    name: AppStrings.sugarIngredient,
    icon: Feather.box,
    color: AppColors.lightShadeOfRed,
  ),
  Ingredient(
    name: AppStrings.toffeeNutSyrupIngredient,
    icon: MaterialCommunityIcons.peanut_outline,
    color: AppColors.midLightShadeGreen,
  ),
  Ingredient(
    name: AppStrings.naturalFlavorsIngredient,
    icon: MaterialCommunityIcons.leaf_maple,
    color: AppColors.midDarkShadeCyan,
  ),
  Ingredient(
    name: AppStrings.vanillaSyrupIngredient,
    icon: MaterialCommunityIcons.flower_tulip_outline,
    color: AppColors.midLightShadeOfBrown,
  ),
];
