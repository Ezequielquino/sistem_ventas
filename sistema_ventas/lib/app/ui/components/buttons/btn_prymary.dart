//import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
//import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
//import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sistema_ventas/core/theme/app_colors.dart';
import 'package:sistema_ventas/core/theme/app_text_theme.dart';
import 'package:sistema_ventas/core/utils/constant.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({
    Key? key,
    this.isLoading = false,
    this.text,
    this.isMinWidth = false,
    this.onPressed,
    this.isOutline = false,
    this.textColor = Colors.white,
  }) : super(key: key);

  final void Function()? onPressed;
  final bool isLoading;
  final String? text;
  final bool isMinWidth;
  final bool isOutline;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadiusMedium.r),
        color: isOutline ? Colors.white : Color.fromARGB(255, 228, 48, 36),
        border: isOutline
            ? Border.all(
                color: AppColors.kBase,
              )
            : null,
        boxShadow: isOutline
            ? null
            : [
                BoxShadow(
                  color: AppColors.kBase.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 27,
                  offset: const Offset(0, 4),
                ),
              ],
      ),
      child: MaterialButton(
        minWidth: !isMinWidth ? double.infinity : null,
        height: 50.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusMedium.r),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: isLoading
              ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : Text(
                  "$text",
                  style: AppTextTheme(context).subTitleLargeBold(
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }
}
