import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:quick_mart_ecommerce/fearures/cart/presentation/widgets/cart_list.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
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
              ProductsCartList(
                onTap: () {
                  removeItemFromCart();
                },
              ),
              //const EmptyCart()
            ],
          ),
        ),
      ),
    );
  }

  removeItemFromCart() {
    showModalBottomSheet(
      context: context,
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
                  "Delete product from Cart",
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
                    "Delete(quantity)product",
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

