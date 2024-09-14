import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_task/features/home/data/model/Product_model.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetails({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStylesManger.font14BlueRegular,
          ),
          verticalSpace(8),
          Row(
            children: [
              Text(
                'EGP ${productModel.price}',
                style: TextStylesManger.font14BlueRegular,
              ),
              horizontalSpace(16),
              Text(
                '2000 EGP',
                style: TextStylesManger.font11MainBlueRegular.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Review (${productModel.rating?.rate.toString()})',
                    style: TextStylesManger.font12BlueRegular,
                  ),
                  horizontalSpace(4),
                  const Icon(
                    Icons.star,
                    color: ColorManger.starColor,
                  ),
                ],
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: ColorManger.mainBlueColor,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(8),
        ],
      ),
    );
  }
}
