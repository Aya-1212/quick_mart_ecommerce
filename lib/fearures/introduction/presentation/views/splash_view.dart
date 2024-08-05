import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/fearures/introduction/presentation/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool? isDark;

  @override
  void initState() {
    isDark = AppLocalStorage.getCachedUserData("isDark") ?? false;
    Future.delayed(const Duration(seconds: 4), () {
      pushWithReplacement(context, nextScreen: const OnBoardingView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              isDark! ? AppSvgs.splashDark : AppSvgs.splashLogo,
              height: 76.h,
              width: 263.08.w,
              fit: BoxFit.fill,
            ),
          ),
          const Gap(20),
          const CircularProgressIndicator(
            color: GeneralAppColors.cyan,
          )
        ],
      ),
    );
  }
}
