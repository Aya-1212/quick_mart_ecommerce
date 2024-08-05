import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart_ecommerce/core/functions/routing.dart';
import 'package:quick_mart_ecommerce/core/widgets/products_detailed_cards.dart';

class ExclusiveSalesView extends StatelessWidget {
  const ExclusiveSalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
        ),
        title: const Text("Exclusive Sales"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Wrap(
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children: List.generate(
                    6,
                    (index) => const ProductDetailedCard(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
