import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/single_product_view.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Wishlist",
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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        pushTo(context, nextScreen:const SingleProductView() );
                      },
                      child: Row(
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
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
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
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                               removeItemFromWishlist(context);
                            },
                            child: SvgPicture.asset(
                              AppSvgs.pop,
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).colorScheme.onSurface,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },

                  separatorBuilder: (context, index) => Gap(20.h),
                  itemCount: 5),
              //   EmptyWishlist()
            ],
          ),
        ),
      ),
    );
  }

  removeItemFromWishlist(context) {
    showModalBottomSheet(
      context: context,
      //  context: context,
      builder: (context) {
        return Container(
          height: 300.h,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(25),
              right: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delete product from wishlist",
                  style: getBodyOne(
                    context,
                    isMedium: true,
                  ),
                ),
                Gap(24.h),
                CustomElevatedButton(
                  color: GeneralAppColors.cyan,
                  width: double.infinity,
                  child: Text(
                    "Delete product",
                    style: getButtonTwo(),
                  ),
                  onTap: () {},
                ),
                Gap(16.h),
                CustomElevatedButton(
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onSurface,
                  child: Text(
                    "Cancele",
                    style: getButtonTwo(
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                  onTap: () {
                    popFrom(context);
                  },
                ),
                Gap(16.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
