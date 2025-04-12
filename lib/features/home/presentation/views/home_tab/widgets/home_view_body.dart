import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/book_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * .03,vertical: screenSize.height * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: screenSize.height * .05,),
          const Text("Best Seller",style: AppStyles.titleMedium,),
          SizedBox(height: screenSize.height * .02,),
        ],
      ),
    ),
        ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * .04),
              child: BestSellerListView(),
            ),
          )
      ],
    );
    
    
  }
}


