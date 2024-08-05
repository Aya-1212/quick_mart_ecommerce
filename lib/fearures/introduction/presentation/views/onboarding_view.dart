import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/fearures/authentication/presentation/views/log_in_view.dart';
import 'package:quick_mart_ecommerce/fearures/introduction/data/onboarding_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  var pageController = PageController();
  bool? isDark;
  int index = 0;

  @override
  void initState() {
    isDark = AppLocalStorage.getCachedUserData("isDark") ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(18),
                  margin: EdgeInsets.only(bottom: 8.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            isDark! ? AppSvgs.logoDark : AppSvgs.logo,
                          ),
                          index != 2
                              ? TextButton(
                                  onPressed: () {
                                    pushAndRemoveUntil(context,
                                        nextScreen: const LogInView());
                                  },
                                  child: Text(
                                    "Skip for now",
                                    style: getBodyTwo(context,
                                        color: GeneralAppColors.cyan,
                                        isMedium: true),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Gap(36.h),
                      Expanded(
                        child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              index = value;
                            });
                          },
                          controller: pageController,
                          itemCount: onboardingList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Image.asset(
                                  onboardingList[index].svg,
                                  width: 240.h,
                                  height: 240.w,
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  onboardingList[index].title,
                                  textAlign: TextAlign.center,
                                  style: getHeaderTwo(context, isBold: true),
                                ),
                                Gap(30.h),
                                Text(
                                  onboardingList[index].description,
                                  textAlign: TextAlign.center,
                                  style: getBodyTwo(context, isMedium: false),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: onboardingList.length,
                      effect: ExpandingDotsEffect(
                        dotColor: isDark!
                            ? DarkThemeColors.grey_100
                            : LightThemeColors.grey_100,
                        activeDotColor: GeneralAppColors.cyan,
                      ),
                    ),
                    index == 2
                        ? CustomElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Get Started",
                                  style: getButtonTwo(),
                                ),
                                Gap(8.h),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: GeneralAppColors.white,
                                )
                              ],
                            ),
                            onTap: () {
                              pushAndRemoveUntil(context,
                                  nextScreen: const LogInView());
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
