/*import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEmptyResult extends StatelessWidget {
  const CustomEmptyResult({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      margin: EdgeInsets.symmetric(horizontal: kMarginApp.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Image.asset(
            "assets/images/img_empty_result.png",
            width: 250.w,
          ),
          Text(
            "Ooops",
            style: AppTextTheme(context).headlineMedium(
              color: AppColors.kSecondary,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTextTheme(context).bodySmall(
              color: AppColors.kSubLetter,
            ),
          ),
        ],
      ),
    );
  }
}*/
