import 'package:quick_mart_ecommerce/core/constants/app_images.dart';

class OnboardingModel {
  final String svg;
  final String title;
  final String description;

  OnboardingModel({
    required this.svg,
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    svg: AppImages.onboarding1,
    title: "Explore a wide range of products",
    description:
        "Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.",
  ),
  OnboardingModel(
    svg: AppImages.onboarding2,
    title: "Unlock exclusive offers and discounts",
    description:
        "Get access to limited-time deals and special promotions available only to our valued customers.",
  ),
  OnboardingModel(
    svg: AppImages.onboarding3,
    title: "Safe and secure payments",
    description:
        " QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.",
  ),
];
