import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Image.asset(AppImages.test2));
  }
}
