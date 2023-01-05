/*import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_empty_result.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class CustomLoaderItems extends StatelessWidget {
  const CustomLoaderItems({
    Key? key,
    required this.isLoading,
    required this.widget,
    required this.items,
    required this.emptyMessage,
  }) : super(key: key);

  final bool isLoading;
  final Widget widget;
  final List<dynamic> items;
  final String emptyMessage;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Text(
              "Cargando...",
              style: AppTextTheme(context).bodyMedium(
                color: AppColors.kPrimary,
              ),
            ),
          )
        : items.isEmpty
            ? SliverToBoxAdapter(
                child: CustomEmptyResult(message: emptyMessage),
              )
            : widget;
  }
}
*/