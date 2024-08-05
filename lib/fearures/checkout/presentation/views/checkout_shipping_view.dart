import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/views/checkout_policies_view.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/checkout_stepper.dart';
import 'package:quick_mart_ecommerce/fearures/checkout/presentation/widgets/switch_between_screens_widget.dart';

class CheckoutShippingView extends StatefulWidget {
  const CheckoutShippingView({super.key});

  @override
  State<CheckoutShippingView> createState() => _CheckoutShippingViewState();
}

class _CheckoutShippingViewState extends State<CheckoutShippingView> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Checkout",
          style: getBodyOne(context, isMedium: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckOutStepper(
                isPage1: true,
                isPage2: false,
                isPage3: false,
              ),
              // CustomElevatedButton(
              //   child: const Icon(Icons.abc),
              //   onTap: () {
              //     pushTo(context, nextScreen: const CheckoutPaymentView());
              //   },
              // ),
              Gap(24.h),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "Full Name ",
                      style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                          isMedium: true)),
                  TextSpan(
                      text: "*",
                      style: getBodyTwo(context,
                          color: Colors.red, isMedium: true)),
                ]),
              ),
              Gap(8.h),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field is required";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),
              Gap(16.h),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "Phone Number ",
                      style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                          isMedium: true)),
                  TextSpan(
                      text: "*",
                      style: getBodyTwo(context,
                          color: Colors.red, isMedium: true)),
                ]),
              ),
              Gap(8.h),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your Phone Number",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field is required";
                  } else if (value.length != 11) {
                    return "the phone number is invalid";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),
              Gap(16.h),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "City ",
                      style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                          isMedium: true)),
                  TextSpan(
                      text: "*",
                      style: getBodyTwo(context,
                          color: Colors.red, isMedium: true)),
                ]),
              ),
              Gap(8.h),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your City",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field is required";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),
              Gap(16.h),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "Address ",
                      style: getBodyTwo(context,
                          color: Theme.of(context).colorScheme.onSurface,
                          isMedium: true)),
                  TextSpan(
                      text: "*",
                      style: getBodyTwo(context,
                          color: Colors.red, isMedium: true)),
                ]),
              ),
              Gap(8.h),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your Address",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field is required";
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),
              const Spacer(),
              const SwitchBetweenScreensWidget(
                isPage1: true,
                nextScreen: CheckoutPoliciesView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
