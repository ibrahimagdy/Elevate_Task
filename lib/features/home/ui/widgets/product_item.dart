import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/features/home/ui/widgets/product_details.dart';
import 'package:store_task/features/home/ui/widgets/product_image.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../data/model/Product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  const ProductItem({super.key, required this.productModel});

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
          ProductImage(imageUrl: productModel.image!),
          verticalSpace(8),
          ProductDetails(productModel: productModel),
        ],
      ),
    );
  }
}
