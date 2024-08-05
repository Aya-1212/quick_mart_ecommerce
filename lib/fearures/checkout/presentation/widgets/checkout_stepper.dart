import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class CheckOutStepper extends StatelessWidget {
  const CheckOutStepper({
    super.key,
    required this.isPage1,
    required this.isPage2,
    required this.isPage3,
  });
  final bool isPage1;
  final bool isPage2;
  final bool isPage3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset(
                AppSvgs.shipping,
                height: 30.h,
                width: 30.w,
                colorFilter: ColorFilter.mode(
                  isPage1
                      ? Theme.of(context).colorScheme.onSurface
                      : GeneralAppColors.cyan,
                  BlendMode.srcIn,
                ),
              ),
              Gap(8.h),
              Text(
                "Shipping",
                style: getCaption(
                  color: isPage1
                      ? Theme.of(context).colorScheme.onSurface
                      : GeneralAppColors.cyan,
                  isSemiBold: true,
                ),
              ),
            ],
          ),
          Gap(8.h),
          Expanded(
              child: Divider(
            color: isPage1
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.onSurface,
          )),
          Gap(8.h),
          Column(
            children: [
              SvgPicture.asset(
                AppSvgs.payment,
                height: 30.h,
                width: 30.w,
                colorFilter: ColorFilter.mode(
                  isPage1
                      ? Theme.of(context).colorScheme.tertiary
                      : isPage2
                          ? Theme.of(context).colorScheme.onSurface
                          : GeneralAppColors.cyan,
                  BlendMode.srcIn,
                ),
              ),
              Gap(8.h),
              Text(
                "Policies",
                style: getCaption(
                  color: isPage1
                      ? Theme.of(context).colorScheme.tertiary
                      : isPage2
                          ? Theme.of(context).colorScheme.onSurface
                          : GeneralAppColors.cyan,
                  isSemiBold: true,
                ),
              ),
            ],
          ),
          Gap(8.h),
          Expanded(
              child: Divider(
            color: isPage1
                ? Theme.of(context).colorScheme.tertiary
                : isPage2
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.onSurface,
          )),
          Gap(8.h),
          Column(
            children: [
              SvgPicture.asset(
                AppSvgs.orders,
                height: 30.h,
                width: 30.w,
                colorFilter: ColorFilter.mode(
                  isPage1
                      ? Theme.of(context).colorScheme.tertiary
                      : isPage2
                          ? Theme.of(context).colorScheme.tertiary
                          : Theme.of(context).colorScheme.onSurface,
                  BlendMode.srcIn,
                ),
              ),
              Gap(8.h),
              Text(
                "Preview",
                style: getCaption(
                  color: isPage1
                      ? Theme.of(context).colorScheme.tertiary
                      : isPage2
                          ? Theme.of(context).colorScheme.tertiary
                          : Theme.of(context).colorScheme.onSurface,
                  isSemiBold: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
