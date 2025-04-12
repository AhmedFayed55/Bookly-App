import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * .21,
      width: screenSize.width *.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image:const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppImages.test1),)
      ),
    );
  }
}
