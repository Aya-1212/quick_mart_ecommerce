// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/widgets/category_products_list.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/views/search_view.dart';

class ShowProductsView extends StatelessWidget {
  ShowProductsView({
    super.key,
    required this.category,
  });
  final String category;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        title: Text(
          category,
          style: getBodyTwo(
            context,
            color: Theme.of(context).colorScheme.onSurface,
            isMedium: true,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              filterProductsAssendingOrDecending(context);
            },
            icon: SvgPicture.asset(
              AppSvgs.filter,
              height: 32,
              width: 32,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              pushTo(context, nextScreen: const SearchView());
            },
            icon: SvgPicture.asset(
              AppSvgs.search,
              height: 32,
              width: 32,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children: [
              //name-->category
              //
              CategoryProductsList()
            ],
          ),
        ),
      ),
    );
  }

  filterProductsAssendingOrDecending(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: 388.h,
            padding: EdgeInsets.all(15.h),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              ),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Filter",
                  style: getBodyOne(
                    context,
                    isMedium: true,
                  ),
                ),
                Gap(16.h),
                ListTile(
                  leading: SvgPicture.asset(
                    isSelected ? AppSvgs.checkboxDone : AppSvgs.checkbox,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn),
                  ),
                  title: Text(
                    filterationOptionns[0],
                    style: getBodyOne(
                      context,
                      isMedium: true,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (isSelected != true) {
                        isSelected = !isSelected;
                      }
                    });
                  },
                ),
                const Divider(),
                ListTile(
                  leading: SvgPicture.asset(
                    isSelected ? AppSvgs.checkbox : AppSvgs.checkboxDone,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn),
                  ),
                  title: Text(
                    "From Z to A",
                    style: getBodyOne(
                      context,
                      isMedium: true,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (isSelected != false) {
                        isSelected = !isSelected;
                      }
                    });
                  },
                ),
                const Divider(),
                Gap(24.h),
                Center(
                  child: CustomElevatedButton(
                    child: Text(
                      "Apply",
                      style: getButtonTwo(),
                    ),
                    onTap: () {
                      //true---> a----z
                      //false---> z----a
                    },
                  ),
                ),
                Gap(8.h),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<String> filterationOptionns = [
  "From A to Z",
  "From Z to A",
];
