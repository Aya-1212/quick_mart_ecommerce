import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_images.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class EmptyWishlist extends StatelessWidget {
  const EmptyWishlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            AppImages.emptywishlist,
            height: 240.h,
            width: 240.w,
            fit: BoxFit.fill,
          ),
        ),
        Gap(16.h),
        Text(
          "Your wishlist is empty",
          style: getHeaderTwo(
            context,
            isBold: true,
          ),
        ),
        Gap(16.h),
        Text(
          "Tap heart button to start saving your favorite items.",
          style: getBodyTwo(context, isMedium: true),
          textAlign: TextAlign.center,
        ),
        Gap(24.h),
        CustomElevatedButton(
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
