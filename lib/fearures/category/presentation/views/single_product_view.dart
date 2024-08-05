import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';

class SingleProductView extends StatefulWidget {
  const SingleProductView({
    super.key,
  });

  @override
  State<SingleProductView> createState() => _SingleProductViewState();
}

class _SingleProductViewState extends State<SingleProductView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/Rectangle 9.png",
                  width: double.infinity,
                  height: 260.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20.w,
                  top: 16.h,
                  child: IconButton(
                    onPressed: () {
                      popFrom(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                 Positioned(
                  right: 20.w,
                  top: 16.h,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: IconButton(
                      onPressed: () {
                        popFrom(context);
                      },
                      icon:  Icon(Icons.favorite_border,color: Theme.of(context).colorScheme.onSurface,),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Silicone Strong Magnetic watch  Silicone Strong Magnetic watc",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: getBodyOne(context, isMedium: true),
                        ),
                      ),
                      Column(
                        children: [
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
                    ],
                  ),
                  Gap(16.h),
                  Text(
                    "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal ",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: getBodyTwo(
                      context,
                      isMedium: false,
                    ),
                  ),
                  Gap(9.h),
                  Text(
                    "Colors",
                    style: getCaption(
                      color: Theme.of(context).colorScheme.onSurface,
                      isSemiBold: true,
                    ),
                  ),
                  Gap(3.h),
                  Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          backgroundColor: index == 0
                              ? GeneralAppColors.cyan
                              : index == 1
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                          radius: 15.h,
                        ),
                      ),
                    ),
                  ),
                  Gap(9.h),
                  Text(
                    "Quantity",
                    style: getCaption(
                      color: Theme.of(context).colorScheme.onSurface,
                      isSemiBold: true,
                    ),
                  ),
                  Gap(6.h),
                  Container(
                    height: 45.h,
                    width: 145.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              // setState(() {
                              //   quantity--;
                              // });
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 20,
                            )),
                        const RotatedBox(
                          quarterTurns: 3,
                          child: Divider(),
                        ),
                        Text(
                          "0",
                          style: getCaption(
                              color: Theme.of(context).colorScheme.onSurface,
                              isSemiBold: true),
                        ),
                        const RotatedBox(
                          quarterTurns: 3,
                          child: Divider(),
                        ),
                        IconButton(
                          onPressed: () {
                            // setState(() {
                            //   quantity++;
                            // });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
           // const Spacer(),
            CustomElevatedButton(
              width: double.infinity,
              child: Text(
                "Add To Cart",
                style: getButtonTwo(),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
