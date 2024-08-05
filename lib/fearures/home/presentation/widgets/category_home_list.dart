import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/category_view.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/show_products_view.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: getHeaderThree(
                color: Theme.of(context).colorScheme.onSurface,
                isBold: true,
              ),
            ),
            TextButton(
              onPressed: () {
                pushTo(context, nextScreen: const CategoryView());
              },
              child: Text(
                "SEE ALL",
                style: getOverLine(
                  color: GeneralAppColors.cyan,
                  isSemiBold: true,
                ),
              ),
            ),
          ],
        ),
        Gap(8.h),
        SizedBox(
          height: 60,
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    pushTo(
                      context,
                      nextScreen: ShowProductsView(
                        category: "Laptops",
                      ),
                    );
                  } else if (index == 1) {
                    pushTo(
                      context,
                      nextScreen: ShowProductsView(
                        category: "Mobile phone",
                      ),
                    );
                  } else if (index == 2) {
                    pushTo(
                      context,
                      nextScreen: ShowProductsView(
                        category: "Headphones",
                      ),
                    );
                  }else{
                     pushTo(
                      context,
                      nextScreen:  ShowProductsView(
                        category: "Smart watches",
                      ),
                    );
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 2),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      categoryList[index],
                      height: 30.h,
                      width: 30.w,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Gap(8.w);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}

List<String> categoryList = [
  "assets/svg/laptop.svg",
  "assets/svg/phone.svg",
  "assets/svg/headphone.svg",
  "assets/svg/watch.svg",
];
