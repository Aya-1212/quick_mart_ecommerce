import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/checked_out_items.dart';

class OngoingOrdersList extends StatelessWidget {
  const OngoingOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: Colors.red,
            ),
            child: Text(
              "Estimated time : 1 day",
              style: getOverLine(
                color: GeneralAppColors.white,
                isSemiBold: true,
              ),
            ),
          ),
          Gap(10.h),
          const CheckedOutItems(),
        ],
      ),
      separatorBuilder: (context, index) => Gap(15.h),
      itemCount: 5,
    );
  }
}
