import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: MediaQuery.of(context).size.width *.02,
      children: [
        Icon(FontAwesomeIcons.solidStar,color:AppColors.starColor,),
        Text("4.8",style: AppStyles.semi20,),
        Text("(2390)",style: AppStyles.bold16Grey,),
      ],
    );
  }
}
