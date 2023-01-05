/*import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class SuccessAnimatedCircle extends StatefulWidget {
  const SuccessAnimatedCircle({Key? key}) : super(key: key);
  _SuccessAnimatedCircleState createState() => _SuccessAnimatedCircleState();
}

class _SuccessAnimatedCircleState extends State<SuccessAnimatedCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.1, //determina el tiempo
        1.0,
        curve: Curves.decelerate,
      ),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 60.w,
      child: CustomPaint(
        foregroundPainter: _DataCompletePainter(
          animation: _animation,
        ),
      ),
    );
  }
}

class _DataCompletePainter extends CustomPainter {
  _DataCompletePainter({
    required this.animation,
  }) : super(repaint: animation);

  final Animation<double> animation;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.kBase
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final circlePath = Path();
    circlePath.addArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        height: size.height,
        width: size.width,
      ),
      vector.radians(-90.0),
      vector.radians(360 * animation.value),
    );

    final leftLine = size.width * 0.2;
    final rightline = size.width * 0.38;

    final leftPercent = animation.value > 0.5 ? 1.0 : animation.value / 0.5;
    final rightPercent =
        animation.value < 0.5 ? 0.0 : (animation.value - 0.5) / 0.5;

    canvas.save();
    canvas.translate(size.width / 3, size.height / 2);
    canvas.rotate(vector.radians(-45));
    canvas.drawLine(Offset.zero, Offset(1.0, leftLine * leftPercent), paint);
    canvas.drawLine(Offset(0.0, leftLine),
        Offset(rightline * rightPercent, leftLine), paint);
    canvas.restore();
    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}*/
