import 'package:bookly_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsAppBAr extends StatelessWidget {
  const CustomBookDetailsAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.x,color: AppColors.whiteColor),),
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartShopping,color: AppColors.whiteColor,),),
      ],
    );
  }
}
