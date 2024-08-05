import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/big_text_widget.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/core/widgets/item_card_details.dart';
import 'package:quick_mart_ecommerce/core/widgets/sub_text_widget.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/single_product_view.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/views/checkout_shipping_view.dart';

class ProductsCartList extends StatelessWidget {
  const ProductsCartList({super.key, required this.onTap});
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return  GestureDetector(onTap: () {
              pushTo(context, nextScreen: const SingleProductView());
            },child: ItemCardDetailes(onTap: onTap,),);
          },
          separatorBuilder: (context, index) {
            return const Gap(16);
          },
        ),
        ///////////////
        Gap(24.h),
        const Divider(),
        Gap(6.h),
        Text(
          "Order Summary",
          style: getBodyOne(
            context,
            isMedium: true,
          ),
        ),
        Gap(12.h),
        const SubTextWidget(
          leading: "subTotal",
          trailing: "\$100",
        ), //
        Gap(12.h),
        const SubTextWidget(
          leading: "shipping cost",
          trailing: "\$10",
        ), //

        Gap(12.h),
       const BigTextWidget(leadingText:"Total" ,rightText:"\$110" ,),
        Gap(24.h),
        CustomElevatedButton(
          
          width: double.infinity,
          onTap: () {
            pushTo(context, nextScreen: const CheckoutShippingView());
          },
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                text: "Checkout",
                style: getButtonTwo(),
                   
              ),
              TextSpan(
                text: "(4 items)",
                  style: getButtonTwo(),
                   
              ),
            ]),
          ),
        ),
      ],
    );
  }
}


