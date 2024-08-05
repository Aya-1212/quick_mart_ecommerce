import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class CheckedOutItems extends StatelessWidget {
  const CheckedOutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/smart_phone.png",
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fill,
          ),
        ),
        Gap(15.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Aya Rady",
                //ABdelaziz mahmoud elkady Aya Rady ABdelaziz mahmoud elkady ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getBodyTwo(
                  context,
                  isMedium: true,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Text(
                "\$500",
                style: getCaption(
                    color:
                        Theme.of(context).colorScheme.onSurface,
                    isSemiBold: true),
              ),
              Text(
                "15%",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.tertiary,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Gap(6.h),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "The quantity : ",
                    style: getBodyTwo(
                      context,
                      isMedium: true,
                      color:
                          Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  TextSpan(
                    text: "2",
                    style: getBodyTwo(
                      context,
                      isMedium: true,
                      color: GeneralAppColors.cyan,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}