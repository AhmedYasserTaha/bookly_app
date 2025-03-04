import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/splash/presentation/views/widget/sliding_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with
        SingleTickerProviderStateMixin // هنا استخدمنا single عشان هو انيمشن واحد
{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
// هنا انيمشن على النص اللى تحت الاللوجو
  @override
  void initState() {
    //استخدمنا initstate عشان ناكسس ال انيمشن
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

// dispose دي عشان لما السبلاش يخلص ميخدش مساحه من الميموري على الفاصي بيقف اول ميخلص
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        SlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
