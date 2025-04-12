import 'package:bookly_app/core/utils/images.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.bookDetailsRoute);
      },
      child: Row(
        children: [
          SizedBox(
            height: screenSize.height * .16,
            child: AspectRatio(aspectRatio: 2/3,
            child: Image.asset(AppImages.test1),),
          ),
          SizedBox(width: screenSize.width * .06,),
          Expanded(
            child: Column(
              spacing: screenSize.height *.01,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width * .5,
                  child: const Text("Harry Potter and the Goblet of Fire",style: AppStyles.bold24,
                  maxLines: 2,  overflow: TextOverflow.ellipsis,)),
                const Text("J.K. Rowling",style: AppStyles.bold16Grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("19.99 €",style: AppStyles.bold24,),
                    const BookRating()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

