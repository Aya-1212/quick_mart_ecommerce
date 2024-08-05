// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/category/data/category_list.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/show_products_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Categories",
            style: getBodyTwo(
              context,
              isMedium: true,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(2),
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              height: 2.h,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(
                child: Wrap(
                 spacing: 8.w,
                 runSpacing: 8.h,
                  children: List.generate(
                    4,
                    (index) {
                      return InkWell(
                        onTap: () {
                          pushTo(
                            context,
                            nextScreen: ShowProductsView(
                              category: categoryList[index],
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150.w,
                              height: 138.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(categoryListImages[index]),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                  width: 2,
                                ),
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            Gap(8.h),
                            Text(
                              categoryList[index],
                              style: getBodyTwo(
                                context,
                                isMedium: true,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )

        //  Padding(
        //   padding: const EdgeInsets.all(20),
        //   child: GridView.builder(
        //     itemCount: categoryList.length,
        //     gridDelegate: gridDelegate,
        //     itemBuilder: (context, index) {
        //
        //     },
        //   ),
        // ),

        );
  }
}
// Wrap(
//   spacing: 10.w,
//   direction: Axis.horizontal,
//   children: [
//     for (int index = 0; index < categoryList.length; index++)
//
//   ],
// ),
