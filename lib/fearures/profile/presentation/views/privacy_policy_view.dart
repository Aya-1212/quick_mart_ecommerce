import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

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
          'Privacy Policy',
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
                "Our Policy",
                style: getHeaderTwo(
                  context,
                  isBold: true,
                ),
              ),
              Gap(6.h),
              Text(
                "At QuickMart, we are committed to protecting the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Gap(16.h),
              Text(
                "1. Information Collection:",
                style: getBodyTwo(context,
                    color: Theme.of(context).colorScheme.onSurface,
                    isMedium: true),
              ),
              Gap(6.h),
              Text(
                "   - Personal Information: We may collect personal information such as name, address, email, and phone number when you create an account, make a purchase, or interact with our services.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - Transaction Details: We collect information related to your purchases, including order history, payment method, and shipping details.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - Usage Data: We may collect data on how you interact with our app, such as browsing activity, search queries, and preferences.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Gap(16.h),
              Text(
                "2. Information Use:",
                style: getBodyTwo(context,
                    color: Theme.of(context).colorScheme.onSurface,
                    isMedium: true),
              ),
              Gap(6.h),
              Text(
                "   - Provide Services: We use the collected information to process orders, deliver products, and provide customer support",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - Personalization: We may use your information to personalize your shopping experience, recommend products, and display targeted advertisements.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - Communication: We may use your contact information to send important updates, promotional offers, and newsletters. You can opt-out of these communications at any time.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Gap(16.h),
              Text(
                "3. Information Sharing:",
                style: getBodyTwo(context,
                    color: Theme.of(context).colorScheme.onSurface,
                    isMedium: true),
              ),
              Gap(6.h),
              Text(
                "   - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, fulfilling orders, and improving our services.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - Legal Compliance: We may disclose personal information if required by law or in response to a valid legal request from authorities.",
                style: getBodyTwo(context, isMedium: true),
              ),
              Gap(16.h),
              Text(
                "4. Data Security:",
                style: getBodyTwo(context,
                    color: Theme.of(context).colorScheme.onSurface,
                    isMedium: true),
              ),
              Gap(6.h),
              Text(
                "   - We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction",
                style: getBodyTwo(context, isMedium: true),
              ),
              Text(
                "   - However, please note that no data transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security of your information.",
                style: getBodyTwo(context, isMedium: true),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
