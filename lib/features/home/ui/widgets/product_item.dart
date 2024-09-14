import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/features/home/ui/widgets/product_details.dart';
import 'package:store_task/features/home/ui/widgets/product_image.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          width: 4.w,
          color: ColorManger.mainBlueColor.withOpacity(0.3),
        ),
      ),
      child: Column(
        children: [
          const ProductImage(),
          verticalSpace(8),
          const ProductDetails(),
        ],
      ),
    );
  }
}
