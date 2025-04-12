import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context,index){
        return SizedBox(height: MediaQuery.of(context).size.height * .03,);
      },
      itemCount: 10,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      itemBuilder: (context, index){
      return BestSellerListViewItem();
    });
  }
}
