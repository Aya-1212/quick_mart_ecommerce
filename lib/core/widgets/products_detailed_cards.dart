import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/single_product_view.dart';

class ProductDetailedCard extends StatelessWidget {
  const ProductDetailedCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, nextScreen: const SingleProductView());
      },
      child: SizedBox(
        width: 160.w,
        height: 277.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/images/Rectangle 9.png",
                    width: 160.w,
                    fit: BoxFit.fill,
                    height: 138.h,
                  ),
                ),
                Positioned(
                  right: 10.w,
                  top: 10.h,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    radius: 19,
                    child: IconButton(
                      onPressed: () {
                        popFrom(context);
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     image: const DecorationImage(
            //       image: AssetImage(
            //         "assets/images/Rectangle 9.png",
            //       ),
            //     ),
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            // ),
            Gap(8.h),
            Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: index == 0
                        ? GeneralAppColors.blue
                        : index == 1
                            ? GeneralAppColors.cyan
                            : LightThemeColors.cyan_50,
                  ),
                ),
              ),
            ),
            Gap(8.h),
            Text(
              "Laptops",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: getBodyTwo(
                context,
                color: Theme.of(context).colorScheme.onSurface,
                isMedium: true,
              ),
            ),
            Text(
              "\$5000",
              style: getCaption(
                isSemiBold: true,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Text(
              "15%",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
