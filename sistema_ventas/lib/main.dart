import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/routes/routes_name.dart';
import 'package:sistema_ventas/app/routes/routes_view.dart';
import 'package:sistema_ventas/core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /*DioConfig.initialize();
  AppConfig.initialize();
  DependencyInjection.load();*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        title: 'App Gestión de Camaroneras',
        theme: lightTheme(context),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
        initialRoute: RoutesName.LOGINVENTAS,
        getPages: RoutesView.views,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: GlowRemover(),
            child: child!,
          );
        },
      ),
    );
  }
}

/// Remueve la burbuja al hacer scroll
class GlowRemover extends ScrollBehavior {
  @override
  Widget buildViewportChrome(context, child, axisDirection) {
    const GlowingOverscrollIndicator(
      color: Colors.transparent,
      axisDirection: AxisDirection.up,
    );
    return child;
  }
}
