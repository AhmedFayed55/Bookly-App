import 'package:bookly_app/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class AppStyles{
  static const TextStyle titleMedium = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w600 ,color: AppColors.whiteColor
  );

  static const TextStyle titlelarge = TextStyle(
    fontSize: 30, fontWeight: FontWeight.w600 ,color: AppColors.whiteColor
  );

  static const TextStyle semi20 = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w500 ,color: AppColors.whiteColorWithOpacity
  );

  static const TextStyle bold24 = TextStyle(
    fontSize: 22, fontWeight: FontWeight.bold ,color: AppColors.whiteColor
  );

  static const TextStyle bold16Grey = TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 150, 149, 149)
  );

  static const TextStyle bold22Black = TextStyle(
    fontSize: 22, fontWeight: FontWeight.bold ,color:AppColors.blackColor
  );
}