import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/core/widgets/big_text_widget.dart';
import 'package:quick_mart_ecommerce/core/widgets/sub_text_widget.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/views/checkout_preview_items.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/views/order_placed_view.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/checkout_stepper.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/switch_between_screens_widget.dart';

class CheckoutPreviewView extends StatefulWidget {
  const CheckoutPreviewView({super.key});

  @override
  State<CheckoutPreviewView> createState() => _CheckoutPreviewViewState();
}

class _CheckoutPreviewViewState extends State<CheckoutPreviewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          "Checkout",
          style: getBodyOne(context, isMedium: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CheckOutStepper(
              isPage1: false,
              isPage2: false,
              isPage3: true,
            ),
            Gap(24.h),
            ListTile(
              title: Text(
                "items (2)",
                style: getBodyOne(
                  context,
                  isMedium: true,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onTap: () {
                pushTo(context, nextScreen: const CheckoutPreviewItems());
              },
            ),
            const Divider(),
            Gap(24.h),
            const BigTextWidget(leadingText: "Shipping Address", rightText: ""),
            Gap(12.h),
            const SubTextWidget(
              leading: "Full Name",
              trailing: "aya rady abdelaziz",
            ),
            Gap(8.h),
            const SubTextWidget(
              leading: "Phone Number",
              trailing: "01122214102",
            ),
            Gap(8.h),
            const SubTextWidget(
              leading: "Payment",
              trailing: "cash on delivery",
            ),
            Gap(8.h),
            const SubTextWidget(
              leading: "city",
              trailing: "cairo",
            ),
            Gap(8.h),
            const SubTextWidget(
              leading: "Address",
              trailing: "1/1 omar ,nasr city",
            ),
            Gap(24.h),

            const BigTextWidget(leadingText: "Order Summary", rightText: ""),
            Gap(12.h),
            const SubTextWidget(
              leading: "subTotal",
              trailing: "\$100",
            ), //
            Gap(12.h),
            const SubTextWidget(
              leading: "shipping cost",
              trailing: "\$10",
            ),
            Gap(12.h),
            const BigTextWidget(
              leadingText: "Total",
              rightText: "\$110",
            ),
            const Spacer(),
            const SwitchBetweenScreensWidget(
              isPage1: false,
              nextScreen: OrderPlacedView(),
              finalStepText: "place order",
            ),
          ],
        ),
      ),
    );
  }
}
