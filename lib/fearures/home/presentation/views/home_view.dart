// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/home/data/banner_lists.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/views/exclusive_sales_view.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/views/search_view.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/widgets/all_products_list.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/widgets/category_home_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var bannerController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppLocalStorage.getCachedUserData("isDark")
                        ? AppSvgs.logoDark
                        : AppSvgs.logo,
                    width: 104.w,
                    height: 32.h,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      pushTo(context, nextScreen: const SearchView());
                    },
                    child: SvgPicture.asset(
                      AppSvgs.search,
                      width: 32.w,
                      height: 32.h,
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
              Gap(24.h),
              SizedBox(
                height: 150.h,
                width: double.infinity,
                child: PageView.builder(
                  controller: bannerController,
                  itemCount: bannerImageList.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            pushTo(
                              context,
                              nextScreen: const ExclusiveSalesView(),
                            );
                          } else {
                            pushTo(
                              context,
                              nextScreen: const SearchView(),
                            );
                          }
                        },
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              bannerImageList[index],
                              height: 150.h,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bannerSubTextList[index],
                                  style: getCaption(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    isSemiBold: false,
                                  ),
                                ),
                                Text(
                                  bannerTitleTextList[index],
                                  style: getHeaderThree(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    isBold: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 15,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              child: SmoothPageIndicator(
                                controller: bannerController,
                                count: bannerImageList.length,
                                effect: JumpingDotEffect(
                                  activeDotColor: GeneralAppColors.cyan,
                                  dotColor:
                                      Theme.of(context).colorScheme.primary,
                                  dotHeight: 10.h,
                                  dotWidth: 10.h,
                                  spacing: 5.w,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
              Gap(24.h),
              const CategoryList(),
              Gap(16.h),
              Text(
                "Latest Products",
                style: getHeaderThree(
                  color: Theme.of(context).colorScheme.onSurface,
                  isBold: true,
                ),
              ),
              Gap(12.h),
              const AllProductsList(),
            ],
          ),
        ),
      ),
    ));
  }
}
