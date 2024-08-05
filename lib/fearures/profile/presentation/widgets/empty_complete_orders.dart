import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_images.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class EmptyCompleteOrders extends StatelessWidget {
  const EmptyCompleteOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Column(
      children: [
        Image.asset(
          AppImages.emptyOrders,
          height: 240.h,
          width: 240.w,
          fit: BoxFit.fill,
        ),
        Gap(16.h),
        Text(
          "No complete orders",
          style: getHeaderTwo(context, isBold: true),
        ),
        Gap(16.h),
        Text(
          "We don't have any past orders that have been completed. Start shopping now and create your first order with us.",
          style: getBodyTwo(context, isMedium: true),
          textAlign: TextAlign.center,
        ),
        Gap(24.h),
        CustomElevatedButton(
          width: double.infinity,
            child: Text(
              "Explore Category",
              style: getButtonTwo(
              ),
            ),
            onTap: () {
              popFrom(context);
            }),
      ],
    );
  }
}