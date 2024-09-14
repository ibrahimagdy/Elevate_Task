import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_task/core/theming/colors.dart';

import 'font_weight_helper.dart';

class TextStylesManger {

  static TextStyle font14BlueRegular = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.textBlueColor,
  );

  static TextStyle font12BlueRegular = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.textBlueColor,
  );

  static TextStyle font11MainBlueRegular = GoogleFonts.poppins(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManger.mainBlueColor,
  );
}