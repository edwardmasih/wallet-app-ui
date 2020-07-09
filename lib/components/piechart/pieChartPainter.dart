import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallet_app/config/colors.dart';
import 'package:wallet_app/config/strings.dart';

class PieChartPainter extends CustomPainter {
  final List categories;
  final double width;
  PieChartPainter({this.categories, this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;

    for (int i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];
      var sweepRadian = currentExpense['amount'] / total * 2 * pi;
      paint.color = AppColors.pieColors[i];

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
