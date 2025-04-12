import 'package:bookly_app/core/components/custom_button.dart';
import 'package:bookly_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: "19.99€",
              backgroundColor: AppColors.whiteColor,
              textColor: AppColors.blackColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
            ),
          ),
          const Expanded(
            child: CustomButton(
              fontSize: 18,
              text: "Free preview",
              backgroundColor: AppColors.orangeColor,
              textColor: AppColors.whiteColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
