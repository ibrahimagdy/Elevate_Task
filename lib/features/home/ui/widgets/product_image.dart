import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_task/core/theming/colors.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFCFCECA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
          ),
          child: Image.network(imageUrl),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18.r,
              child: const Icon(
                Icons.favorite_border,
                size: 28,
                color: ColorManger.mainBlueColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
