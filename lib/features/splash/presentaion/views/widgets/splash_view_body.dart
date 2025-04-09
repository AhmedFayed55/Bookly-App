import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidindAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidindAnimation = Tween<Offset>(begin: const Offset(0, 2),end: Offset.zero).animate(animationController);
    // coment them cause i use AnimatedBuilder
    // animationController.forward();
    // slidindAnimation.addListener((){
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
        return  Column(
      spacing: screenSize.height * .025,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Image.asset(AppImages.logo),
       // use Animated builder to To control the widget that I want to be built again when the animation controller's value changes
        AnimatedBuilder(
          animation: slidindAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidindAnimation,
              child: const Text("Read Free Books",textAlign: TextAlign.center));
          }
        )
      ],
    );
  }
}
