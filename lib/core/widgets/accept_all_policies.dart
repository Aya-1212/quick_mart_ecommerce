import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/privacy_policy_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/terms_and_condition_view.dart';

class AcceptPoliciesWidget extends StatelessWidget {
  const AcceptPoliciesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(children: [
        TextSpan(
          text: "By login , you agree to our  ",
          style: getCaption(
            color: Theme.of(context).colorScheme.onSurface,
            isSemiBold: true,
          ),
        ),
        WidgetSpan(
          child: GestureDetector(
            onTap: () {
              pushTo(
                context,
                nextScreen: const PrivacyPolicyView(),
              );
            },
            child: Text(
              "Privacy Policy",
              style: getCaption(
                color: GeneralAppColors.cyan,
                isSemiBold: true,
              ),
            ),
          ),
        ),
        TextSpan(
          text: " and ",
          style: getCaption(
            color: Theme.of(context).colorScheme.onSurface,
            isSemiBold: true,
          ),
        ),
        WidgetSpan(
          child: GestureDetector(
            onTap: () {
              pushTo(
                context,
                nextScreen: const TermsAndConditionsView(),
              );
            },
            child: Text(
              "Terms & Conditions.",
              style: getCaption(
                color: GeneralAppColors.cyan,
                isSemiBold: true,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
