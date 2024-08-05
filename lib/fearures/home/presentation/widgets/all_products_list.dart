import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/widgets/products_detailed_cards.dart';
import 'package:quick_mart_ecommerce/fearures/category/presentation/views/single_product_view.dart';

class AllProductsList extends StatelessWidget {
  const AllProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(direction: Axis.horizontal,
        spacing: 8.w,
        runSpacing: 8.h,
        children: List.generate(
          6,
          (index) => InkWell(
            onTap: () {
              pushTo(
                context,
                nextScreen: const SingleProductView(),
              );
            },
            child: const ProductDetailedCard(),
          ),
        ),
      ),
    );
  }
}