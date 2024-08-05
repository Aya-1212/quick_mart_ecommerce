import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart_ecommerce/core/utils/app_colors.dart';
import 'package:quick_mart_ecommerce/core/utils/app_text_styles.dart';
import 'package:quick_mart_ecommerce/fearures/cart/presentation/views/cart_view.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/category_view.dart';
import 'package:quick_mart_ecommerce/fearures/home/presentation/views/home_view.dart';
import 'package:quick_mart_ecommerce/fearures/profile/presentation/views/profile_view.dart';
import 'package:quick_mart_ecommerce/fearures/wishlist/presentation/views/wishlist_view.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({
    super.key,
    this.page,
  });

  final int? page;
  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  @override
  void initState() {
    selectedIndex = widget.page ?? 0;
    super.initState();
  }

  List<Widget> views = [
    HomeView(),
    const CategoryView(),
    const CartView(),
    const WishListView(),
    const ProfileView(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: views[selectedIndex],
      //
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 1.h,
            ),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: BottomNavigationBar(
          items: List.generate(
            bottomNavigationSvg.length,
            (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                bottomNavigationSvg[index],
                height: 30,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              label: label[index],
              activeIcon: SvgPicture.asset(
                bottomNavigationSvg[index],
                height: 30,
                colorFilter: const ColorFilter.mode(
                  GeneralAppColors.cyan,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),

          ///
          useLegacyColorScheme: false,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: getCaption(
            color: Theme.of(context).colorScheme.onSurface,
            isSemiBold: true,
          ),
          unselectedLabelStyle: getCaption(
            color: Theme.of(context).colorScheme.primary,
            isSemiBold: true,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,

          ////
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

List<String> bottomNavigationSvg = [
  "assets/svg/home-2.svg",
  "assets/svg/category-2.svg",
  "assets/svg/shopping-cart.svg",
  "assets/svg/heart.svg",
  "assets/svg/profile.svg",
];

List<String> label = [
  "Home",
  "Category",
  "Cart",
  "Wishlist",
  "Profile",
];
