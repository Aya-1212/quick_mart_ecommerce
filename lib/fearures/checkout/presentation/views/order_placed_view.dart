import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_images.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/core/widgets/naviagation_bar_view.dart';

class OrderPlacedView extends StatelessWidget {
  const OrderPlacedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Center(
                  child: Image.asset(
                    AppImages.orderPlaced,
                    width: 240.w,
                    height: 240.h,
                  ),
                ),
              ),
            ),
            Gap(16.h),
            Text(
              "Your order has been placed successfully",
              textAlign: TextAlign.center,
              style: getHeaderTwo(
                context,
                isBold: true,
              ),
            ),
            Gap(30.h),
            Text(
              "Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!",
              textAlign: TextAlign.center,
              style: getBodyTwo(context, isMedium: false),
            ),
            Gap(24.h),
            CustomElevatedButton(
              width: double.infinity,
              child: Text(
                "Continue Shopping",
                style: getButtonTwo(),
              ),
              onTap: () {
                pushAndRemoveUntil(context, nextScreen: const NavigationBarView() );
              },
            ),
          ],
        ),
      ),
    );
  }
}
