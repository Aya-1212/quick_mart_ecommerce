import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_images.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class EmptyOngoingOrders extends StatelessWidget {
  const EmptyOngoingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.emptyOrders,
          height: 240.h,
          width: 240.w,
          fit: BoxFit.fill,
        ),
        Gap(16.h),
        Text(
          "No ongoing orders",
          style: getHeaderTwo(context, isBold: true),
        ),
        Gap(16.h),
        Text(
          " We currently don't have any active orders in progress. Feel free to explore our products and place a new order.",
          style: getBodyTwo(context, isMedium: true),
          textAlign: TextAlign.center,
        ),
        Gap(24.h),
        CustomElevatedButton(
          width: double.infinity,
          child: Text(
            "Explore Category",
            style: getButtonTwo(),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
