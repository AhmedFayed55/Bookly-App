import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * .3,
      child: AspectRatio(
        aspectRatio: 2.2/3,
        child: Image.asset(AppImages.test1)),
    );
  }
}
