import 'package:bookly_app/core/components/custom_text_form_field.dart';
import 'package:bookly_app/features/home/presentation/views/home_tab/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: "Search For Books",
          suffixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
            color: Colors.indigo[600],
          ),
        ),
        SearchResultListView()
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: MediaQuery.of(context).size.height * .03);
        },
        itemCount: 10,
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: MediaQuery.of(context).size.width *.04),
        itemBuilder: (context, index) {
          return BestSellerListViewItem();
        },
      ),
    );
    ;
  }
}
