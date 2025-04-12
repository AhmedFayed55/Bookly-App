import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_tab/widgets/book_details_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_tab/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_tab/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_tab/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .05,
        vertical: screenSize.height * .013,
      ),
      child: Column(
        spacing: screenSize.height * .01,
        children: [
          const CustomBookDetailsAppBAr(),
          SizedBox(height: screenSize.height * .013),
          const BookDetailsListViewItem(),
          SizedBox(height: screenSize.height * .02),
          const Text("The Jungle Book", style: AppStyles.titlelarge),
          const Text("Rudyard Kipling", style: AppStyles.semi20),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: screenSize.height * .016),
          const BooksAction(),
          SizedBox(height: screenSize.height * .03,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",style: AppStyles.titleMedium,)),
            SimilarBooksListView()
        ],
      ),
    );
  }
}



