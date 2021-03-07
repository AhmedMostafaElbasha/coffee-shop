import '../../constants/constants.dart';

import '../../data/data.dart';

var tasteOfTheWeekItems = [
  TasteOfTheWeek(
    imagePath: AppImagePaths.starbucks,
    coffeeName: "Caffe Misto",
    shopName: 'Starbucks',
    description: AppStrings.firstTasteOfTheWeekDescription,
    price: 4.99,
    isFavorite: false,
  ),
  TasteOfTheWeek(
    imagePath: AppImagePaths.twoCup,
    coffeeName: "Caffe Latte",
    shopName: 'BrownHouse',
    description: AppStrings.secondTasteOfTheWeekDescription,
    price: 3.99,
    isFavorite: false,
  ),
];
