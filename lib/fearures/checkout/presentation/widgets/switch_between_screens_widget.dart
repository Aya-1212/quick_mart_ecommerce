import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class SwitchBetweenScreensWidget extends StatelessWidget {
  const SwitchBetweenScreensWidget({
    super.key,
    required this.isPage1,
    required this.nextScreen,
    this.finalStepText,
  });
  final bool isPage1;
  final Widget nextScreen;
  final String? finalStepText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: isPage1
              ? const SizedBox()
              : CustomElevatedButton(
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: GeneralAppColors.white,
                      ),
                      Gap(5.w),
                      Text(
                        "previous",
                        style: getButtonTwo(),
                      ),
                    ],
                  ),
                  onTap: () {
                    popFrom(context);
                  },
                ),
        ),
        Expanded(
          child: CustomElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  finalStepText ?? "Next",
                  style: getButtonTwo(),
                ),
                Gap(5.w),
                const Icon(
                  Icons.arrow_forward,
                  size: 28,
                  color: GeneralAppColors.white,
                ),
              ],
            ),
            onTap: () {
              pushTo(context, nextScreen: nextScreen);
            },
          ),
        ),
      ],
    );
  }
}
