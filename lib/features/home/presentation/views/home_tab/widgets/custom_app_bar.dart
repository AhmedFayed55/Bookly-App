import 'package:bookly_app/core/utils/images.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .03,
      vertical: screenSize.height * .008),
      child: Row(
        children: [
          Image.asset(AppImages.logo,height: 18,),
          Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRoutes.searchRoute);
          }, 
          icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 20,))
        ],
      ),
    );
  }
}
