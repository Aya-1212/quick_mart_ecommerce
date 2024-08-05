import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/constants/app_svgs.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class ItemCardDetailes extends StatelessWidget {
  const ItemCardDetailes({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
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
                    color: Theme.of(context).colorScheme.onSurface,
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
        
            InkWell(
                onTap: onTap,
                child: SvgPicture.asset(
                  AppSvgs.pop,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onSurface,
                    BlendMode.srcIn,
                  ),
                ),
              )
      ],
    );
  }
}
