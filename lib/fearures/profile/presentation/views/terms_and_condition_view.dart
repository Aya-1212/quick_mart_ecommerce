import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

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
          'Terms and Conditions',
          style: getBodyTwo(context,
              color: Theme.of(context).colorScheme.onSurface, isMedium: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Our Terms And Conditions",
              style: getHeaderTwo(
                context,
                isBold: true,
              ),
            ),
            Gap(6.h),
            Text(
              "Welcome to QuickMart! These Terms and Conditions (\"Terms\") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "1. Account Registration:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              " - You must create an account to use certain features of QuickMart.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - You are responsible for providing accurate and up-to-date information during the registration process.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - You are responsible for providing accurate and up-to-date information during the registration process.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "2. Product Information and Pricing:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "    - QuickMart strives to provide accurate product descriptions, images, and pricing information.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - We reserve the right to modify product details and prices without prior notice.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              " - In the event of an error, we may cancel or refuse orders placed for incorrectly priced products.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "3. Order Placement and Fulfillment:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "   - By placing an order on QuickMart, you agree to purchase the selected products at the stated price.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - We reserve the right to accept or reject any order, and we may cancel orders due to product unavailability, pricing errors, or suspected fraudulent activity.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - Once an order is confirmed, we will make reasonable efforts to fulfill and deliver it in a timely manner.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "4. Shipping and Delivery:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "   - QuickMart will make reasonable efforts to ensure timely delivery of products.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - Shipping times may vary based on factors beyond our control, such as location, weather conditions, or carrier delays.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - Risk of loss or damage to products passes to you upon delivery.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "5. Returns and Refunds:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "   - Shipping times may vary based on factors beyond our control, such as location, weather conditions, or carrier delays.",
              style: getBodyTwo(context, isMedium: true),
            ),
             Text(
              "   - Certain products may be non-returnable or subject to specific conditions.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "6. Intellectual Property:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "   - QuickMart and its content, including logos, trademarks, text, images, and software, are protected by intellectual property rights.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - You may not use, reproduce, modify, distribute, or display any part of QuickMart without our prior written consent.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Gap(16.h),
            Text(
              "7. User Conduct:",
              style: getBodyTwo(context,
                  color: Theme.of(context).colorScheme.onSurface,
                  isMedium: true),
            ),
            Gap(6.h),
            Text(
              "   - You agree to use QuickMart in compliance with applicable laws and regulations.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - You will not engage in any activity that disrupts or interferes with the functioning of QuickMart or infringes upon the rights of others.",
              style: getBodyTwo(context, isMedium: true),
            ),
            Text(
              "   - Any unauthorized use or attempt to access restricted areas or user accounts is strictly prohibited.",
              style: getBodyTwo(context, isMedium: true),
            )
          ],
        )),
      ),
    );
  }
}
