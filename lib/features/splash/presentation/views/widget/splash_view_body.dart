import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/constans.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widget/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with
        SingleTickerProviderStateMixin // هنا استخدمنا single عشان هو انيمشن واحد
{
  late AnimationController
      animationController; // المتحكم الاساسى فى الانمشن بيحدد مدته بيشغله وكدا
  late Animation<Offset>
      slidingAnimation; // ده متغير بيخزن حركه النص باستخدام tween هي المسؤله عن تحديد البدايه والنهايه للحركه
// هنا انيمشن على النص اللى تحت الاللوجو
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatToHome();
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

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync:
            this, // vsync: this معناه إننا بنربط الأنيميشن بـ TickerProvider، وده بيمنع استهلاك موارد الجهاز بدون داعي
        duration: const Duration(milliseconds: 750));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.fade, duration: kTransationDuration);
      },
    );
  }
}
