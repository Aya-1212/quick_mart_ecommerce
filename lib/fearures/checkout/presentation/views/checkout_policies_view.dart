import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/views/checkout_preview_view.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/checkout_stepper.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/switch_between_screens_widget.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/privacy_policy_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/terms_and_condition_view.dart';

class CheckoutPoliciesView extends StatelessWidget {
  const CheckoutPoliciesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          "Checkout",
          style: getBodyOne(context, isMedium: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CheckOutStepper(
              isPage1: false,
              isPage2: true,
              isPage3: false,
            ),
            Gap(24.h),
            TextButton(
              onPressed: () {
                pushTo(context, nextScreen: const PrivacyPolicyView());
              },
              child: Text(
                "Privacy Policy",
                style: getBodyOne(context, isMedium: true),
              ),
            ),
            TextButton(
              onPressed: () {
                pushTo(context, nextScreen: const TermsAndConditionsView());
              },
              child: Text(
                " Terms And Conditions",
                style: getBodyOne(context, isMedium: true),
              ),
            ),
            Gap(24.h),
            Text(
              "By proceeding to checkout, you acknowledge that you have read and agreed to our Terms and Conditions and Privacy Policy. Please review these documents carefully as they outline your rights, responsibilities, and our obligations.",
              textAlign: TextAlign.center,
              style: getBodyTwo(
                context,
                isMedium: false,
              ),
            ),
            const Spacer(),
            const SwitchBetweenScreensWidget(
              isPage1: false,
              nextScreen: CheckoutPreviewView(),
            ),
          ],
        ),
      ),
    );
  }
}
