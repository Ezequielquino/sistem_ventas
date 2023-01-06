import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/components/buttons/btn_prymary.dart';
import 'package:sistema_ventas/app/ui/components/inputs/input_text.dart';
import 'package:sistema_ventas/app/ui/views/login_ventas/login_ventas_controller.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_view.dart';
import 'package:sistema_ventas/core/theme/app_colors.dart';
import 'package:sistema_ventas/core/theme/app_text_theme.dart';
import 'package:sistema_ventas/core/utils/constant.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginVentasController>(
      builder: (controller) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(),
          padding: EdgeInsets.symmetric(horizontal: 20.0 //kMarginLargeApp.w,
              ),
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 20.h),
              Obx(
                () => controller.existsSession.isEmpty
                    ? InputText(
                        controller: controller.textCtrlEmail,
                        border: InputBorder.none,
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 15,
                        labelText: "Usuario",
                        filled: true,
                        fontColor: AppColors.kPrimary,
                        errorText: controller.errorTextEmail.value == ""
                            ? null
                            : controller.errorTextEmail.value,
                        onChanged: (value) =>
                            controller.errorTextEmail.value = "",
                      )
                    : GestureDetector(
                        onTap: null, //controller.removeSession,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.existsSession.value,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 10.h),
                            const Text(
                              "Cambiar usuario",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: 20.h),
              Obx(
                () => InputText(
                  controller: controller.textCtrlPassword,
                  labelText: "Contraseña",
                  border: InputBorder.none,
                  keyboardType: TextInputType.text,
                  obscureText: controller.isObscureText.value,
                  maxLength: 30,
                  maxLines: 1,
                  fontColor: AppColors.kPrimary,
                  suffixIcon: GestureDetector(
                    onTap: controller.showPassword,
                    child: controller.isObscureText.value
                        ? const Icon(
                            Icons.visibility_off_rounded,
                            color: AppColors.kSecondary,
                          )
                        : const Icon(Icons.visibility),
                  ),
                  errorText: controller.errorTextPassword.value == ""
                      ? null
                      : controller.errorTextPassword.value,
                  onChanged: (value) => controller.errorTextPassword.value = "",
                ),
              ),
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: () {}, //=>// Get.toNamed(RoutesName.RECOVERPASSWORD),
                child: Text.rich(
                  TextSpan(
                    text: "¿Has olvidado la contraseña? ",
                    style: AppTextTheme(context).bodyMedium(),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Recuperar aquí",
                        style: AppTextTheme(context).bodyMediumBold(
                            color: Color.fromARGB(255, 228, 48, 36)),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20.h),
              Obx(
                () => BtnPrimary(
                  isLoading: controller.isLoading.value,
                  text: "Ingresar",
                  onPressed: controller.isLoading.value
                      ? null
                      : () {
                          FocusScope.of(context).unfocus();
                          controller.doAuthentication();
                        },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
