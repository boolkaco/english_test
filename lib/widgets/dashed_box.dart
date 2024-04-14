import 'dart:math';

import 'package:flutter/material.dart';

class DashedBox extends StatelessWidget {
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final Color fillColor;
  final double strokeWidth;
  final Widget child;

  const DashedBox({
    super.key,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.color = Colors.transparent,
    this.fillColor = Colors.transparent,
    this.strokeWidth = 1.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedRectPainter(
        color: color,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        strokeWidth: strokeWidth,
        radius: 4,
      ),
      child: Container(
        color: fillColor,
        child: child,
      ),
    );
  }
}

class DashedRectPainter extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double strokeWidth;
  final double radius;

  DashedRectPainter({
    required this.dashWidth,
    required this.dashSpace,
    required this.color,
    required this.strokeWidth,
    this.radius = 0.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Path path = Path();
    double x = radius;
    double y = 0;
    while (x < size.width - radius) {
      path.moveTo(x, y);
      path.lineTo(x + dashWidth, y);
      x += dashWidth + dashSpace;
    }
    x = size.width;
    y = radius;
    while (y < size.height - radius) {
      path.moveTo(x, y);
      path.lineTo(x, y + dashWidth);
      y += dashWidth + dashSpace;
    }
    x = size.width - radius;
    y = size.height;
    while (x > radius) {
      path.moveTo(x, y);
      path.lineTo(x - dashWidth, y);
      x -= dashWidth + dashSpace;
    }
    x = 0;
    y = size.height - radius;
    while (y > radius) {
      path.moveTo(x, y);
      path.lineTo(x, y - dashWidth);
      y -= dashWidth + dashSpace;
    }

    if (radius > 0) {
      path.addArc(
        Rect.fromCircle(center: Offset(radius, radius), radius: radius),
        pi,
        pi / 2,
      );
      path.addArc(
        Rect.fromCircle(
            center: Offset(size.width - radius, radius), radius: radius),
        -pi / 2,
        pi / 2,
      );
      path.addArc(
        Rect.fromCircle(
            center: Offset(size.width - radius, size.height - radius),
            radius: radius),
        0,
        pi / 2,
      );
      path.addArc(
        Rect.fromCircle(
            center: Offset(radius, size.height - radius), radius: radius),
        pi / 2,
        pi / 2,
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
