import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';

class CompanyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    Path mainPath = Path();
    Path path = Path();

    // Path number 1

    path = Path();
    path.lineTo(size.width / 4, size.height * 0.06);
    path.cubicTo(size.width / 4, size.height * 0.06, size.width * 0.36, size.height * 0.05, size.width * 0.36,
        size.height * 0.05);
    path.cubicTo(size.width * 0.36, size.height * 0.05, size.width * 0.71, size.height * 0.06, size.width * 0.71,
        size.height * 0.06);
    path.cubicTo(size.width * 0.71, size.height * 0.06, size.width * 0.77, size.height * 0.05, size.width * 0.77,
        size.height * 0.05);
    path.cubicTo(size.width * 0.77, size.height * 0.05, size.width * 1.03, size.height * 0.07, size.width * 1.03,
        size.height * 0.07);
    path.cubicTo(size.width * 1.03, size.height * 0.07, size.width * 1.04, size.height * 0.07, size.width * 1.05,
        size.height * 0.07);
    path.cubicTo(size.width * 1.05, size.height * 0.07, size.width * 1.05, size.height * 0.02, size.width * 1.05,
        size.height * 0.02);
    path.cubicTo(size.width * 1.05, size.height * 0.02, size.width * 0.95, size.height * 0.01, size.width * 0.95,
        size.height * 0.01);
    path.cubicTo(size.width * 0.95, size.height * 0.01, size.width * 0.8, size.height * 0.02, size.width * 0.8,
        size.height * 0.02);
    path.cubicTo(size.width * 0.8, size.height * 0.02, size.width * 0.64, size.height * 0.02, size.width * 0.64,
        size.height * 0.02);
    path.cubicTo(size.width * 0.64, size.height * 0.02, size.width * 0.47, size.height * 0.02, size.width * 0.47,
        size.height * 0.02);
    path.cubicTo(
        size.width * 0.47, size.height * 0.02, size.width / 4, size.height * 0.02, size.width / 4, size.height * 0.02);
    path.cubicTo(size.width / 4, size.height * 0.02, size.width * 0.05, size.height * 0.02, size.width * 0.05,
        size.height * 0.02);
    path.cubicTo(size.width * 0.05, size.height * 0.02, size.width * 0.05, size.height * 0.07, size.width * 0.05,
        size.height * 0.07);
    path.cubicTo(
        size.width * 0.13, size.height * 0.07, size.width / 4, size.height * 0.06, size.width / 4, size.height * 0.06);
    path.cubicTo(
        size.width / 4, size.height * 0.06, size.width / 4, size.height * 0.06, size.width / 4, size.height * 0.06);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 2

    path = Path();
    path.lineTo(size.width * 0.13, size.height * 0.06);
    path.cubicTo(size.width * 0.14, size.height * 0.06, size.width * 0.34, size.height * 0.04, size.width * 0.34,
        size.height * 0.04);
    path.cubicTo(
        size.width * 0.34, size.height * 0.04, size.width / 2, size.height * 0.07, size.width / 2, size.height * 0.07);
    path.cubicTo(size.width / 2, size.height * 0.07, size.width * 0.69, size.height * 0.05, size.width * 0.69,
        size.height * 0.05);
    path.cubicTo(size.width * 0.69, size.height * 0.05, size.width * 0.87, size.height * 0.07, size.width * 0.87,
        size.height * 0.07);
    path.cubicTo(size.width * 0.87, size.height * 0.07, size.width, size.height * 0.04, size.width, size.height * 0.05);
    path.cubicTo(size.width, size.height * 0.05, size.width, size.height * 0.04, size.width * 1.05, size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.05, size.height * 0.02, size.width * 1.05,
        size.height * 0.02);
    path.cubicTo(size.width * 1.05, size.height * 0.02, size.width * 0.82, size.height * 0.02, size.width * 0.82,
        size.height * 0.02);
    path.cubicTo(size.width * 0.82, size.height * 0.02, size.width * 0.7, size.height * 0.02, size.width * 0.7,
        size.height * 0.02);
    path.cubicTo(size.width * 0.7, size.height * 0.02, size.width * 0.59, size.height * 0.02, size.width * 0.59,
        size.height * 0.02);
    path.cubicTo(size.width * 0.59, size.height * 0.02, size.width * 0.52, size.height * 0.02, size.width * 0.52,
        size.height * 0.02);
    path.cubicTo(size.width * 0.52, size.height * 0.02, size.width * 0.38, size.height * 0.02, size.width * 0.38,
        size.height * 0.02);
    path.cubicTo(size.width * 0.38, size.height * 0.02, size.width * 0.22, size.height * 0.02, size.width / 5,
        size.height * 0.02);
    path.cubicTo(size.width / 5, size.height * 0.03, size.width * 0.1, size.height * 0.02, size.width * 0.05,
        size.height * 0.02);
    path.cubicTo(size.width * 0.05, size.height * 0.02, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.08, size.height * 0.04, size.width * 0.13, size.height * 0.06, size.width * 0.13,
        size.height * 0.06);
    path.cubicTo(size.width * 0.13, size.height * 0.06, size.width * 0.13, size.height * 0.06, size.width * 0.13,
        size.height * 0.06);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 3

    path = Path();
    path.lineTo(size.width * 0.11, size.height * 0.04);
    path.cubicTo(size.width * 0.11, size.height * 0.04, size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.4, size.height * 0.03, size.width * 0.4,
        size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.58, size.height * 0.02, size.width * 0.58,
        size.height * 0.02);
    path.cubicTo(size.width * 0.58, size.height * 0.02, size.width * 0.77, size.height * 0.04, size.width * 0.77,
        size.height * 0.04);
    path.cubicTo(size.width * 0.77, size.height * 0.04, size.width * 0.9, size.height * 0.03, size.width * 0.9,
        size.height * 0.03);
    path.cubicTo(size.width * 0.9, size.height * 0.03, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 1.02, size.height * 0.01, size.width * 1.02,
        size.height * 0.01);
    path.cubicTo(size.width * 1.02, size.height * 0.01, size.width, size.height * 0.01, size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.01, size.width * 0.93, 0, size.width * 0.92, 0);
    path.cubicTo(size.width * 0.92, 0, size.width * 0.85, size.height * 0.01, size.width * 0.85, size.height * 0.01);
    path.cubicTo(size.width * 0.85, size.height * 0.01, size.width * 0.82, 0, size.width * 0.82, 0);
    path.cubicTo(size.width * 0.82, 0, size.width * 0.67, 0, size.width * 0.67, 0);
    path.cubicTo(size.width * 0.67, 0, size.width * 0.55, size.height * 0.01, size.width * 0.55, size.height * 0.01);
    path.cubicTo(size.width * 0.55, size.height * 0.01, size.width * 0.4, 0, size.width * 0.4, 0);
    path.cubicTo(size.width * 0.4, 0, size.width * 0.37, size.height * 0.01, size.width * 0.37, size.height * 0.01);
    path.cubicTo(size.width * 0.37, size.height * 0.01, size.width * 0.12, size.height * 0.01, size.width * 0.12,
        size.height * 0.01);
    path.cubicTo(size.width * 0.12, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.11, size.height * 0.04, size.width * 0.11,
        size.height * 0.04);
    path.cubicTo(size.width * 0.11, size.height * 0.04, size.width * 0.11, size.height * 0.04, size.width * 0.11,
        size.height * 0.04);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 4

    path = Path();
    path.lineTo(size.width * 0.14, size.height * 0.03);
    path.cubicTo(size.width * 0.14, size.height * 0.03, size.width * 0.23, size.height * 0.04, size.width * 0.23,
        size.height * 0.04);
    path.cubicTo(size.width * 0.23, size.height * 0.04, size.width * 0.52, size.height * 0.03, size.width * 0.52,
        size.height * 0.03);
    path.cubicTo(size.width * 0.52, size.height * 0.03, size.width * 0.64, size.height * 0.03, size.width * 0.64,
        size.height * 0.03);
    path.cubicTo(size.width * 0.64, size.height * 0.03, size.width * 0.76, size.height * 0.04, size.width * 0.76,
        size.height * 0.04);
    path.cubicTo(size.width * 0.76, size.height * 0.04, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 0.77, size.height * 0.01, size.width * 0.77,
        size.height * 0.01);
    path.cubicTo(size.width * 0.77, size.height * 0.01, size.width * 0.73, size.height * 0.01, size.width * 0.72, 0);
    path.cubicTo(size.width * 0.72, 0, size.width * 0.6, 0, size.width * 0.6, 0);
    path.cubicTo(size.width * 0.6, 0, size.width * 0.51, size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width / 3, 0, size.width / 3, 0);
    path.cubicTo(size.width / 3, 0, size.width * 0.19, size.height * 0.01, size.width * 0.19, size.height * 0.01);
    path.cubicTo(size.width * 0.19, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.14, size.height * 0.03, size.width * 0.14,
        size.height * 0.03);
    path.cubicTo(size.width * 0.14, size.height * 0.03, size.width * 0.14, size.height * 0.03, size.width * 0.14,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 5

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 0.11, size.height * 0.04);
    path.cubicTo(size.width * 0.11, size.height * 0.04, size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.4, size.height * 0.03, size.width * 0.4,
        size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.58, size.height * 0.02, size.width * 0.58,
        size.height * 0.02);
    path.cubicTo(size.width * 0.58, size.height * 0.02, size.width * 0.77, size.height * 0.04, size.width * 0.77,
        size.height * 0.04);
    path.cubicTo(size.width * 0.77, size.height * 0.04, size.width * 0.9, size.height * 0.03, size.width * 0.9,
        size.height * 0.03);
    path.cubicTo(size.width * 0.9, size.height * 0.03, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 1.02, size.height * 0.01, size.width * 1.02,
        size.height * 0.01);
    path.cubicTo(size.width * 1.02, size.height * 0.01, size.width, size.height * 0.01, size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.01, size.width * 0.93, 0, size.width * 0.92, 0);
    path.cubicTo(size.width * 0.92, 0, size.width * 0.85, size.height * 0.01, size.width * 0.85, size.height * 0.01);
    path.cubicTo(size.width * 0.85, size.height * 0.01, size.width * 0.82, 0, size.width * 0.82, 0);
    path.cubicTo(size.width * 0.82, 0, size.width * 0.67, 0, size.width * 0.67, 0);
    path.cubicTo(size.width * 0.67, 0, size.width * 0.55, size.height * 0.01, size.width * 0.55, size.height * 0.01);
    path.cubicTo(size.width * 0.55, size.height * 0.01, size.width * 0.4, 0, size.width * 0.4, 0);
    path.cubicTo(size.width * 0.4, 0, size.width * 0.37, size.height * 0.01, size.width * 0.37, size.height * 0.01);
    path.cubicTo(size.width * 0.37, size.height * 0.01, size.width * 0.12, size.height * 0.01, size.width * 0.12,
        size.height * 0.01);
    path.cubicTo(size.width * 0.12, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.11, size.height * 0.04, size.width * 0.11,
        size.height * 0.04);
    path.cubicTo(size.width * 0.11, size.height * 0.04, size.width * 0.11, size.height * 0.04, size.width * 0.11,
        size.height * 0.04);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 6

    path = Path();
    path.lineTo(size.width * 0.22, size.height * 1.13);
    path.cubicTo(size.width * 0.22, size.height * 1.13, size.width * 0.52, size.height * 1.16, size.width * 0.52,
        size.height * 1.16);
    path.cubicTo(size.width * 0.52, size.height * 1.16, size.width * 0.71, size.height * 1.15, size.width * 0.71,
        size.height * 1.15);
    path.cubicTo(size.width * 0.71, size.height * 1.15, size.width * 0.77, size.height * 1.16, size.width * 0.77,
        size.height * 1.16);
    path.cubicTo(size.width * 0.77, size.height * 1.16, size.width * 1.03, size.height * 1.14, size.width * 1.03,
        size.height * 1.14);
    path.cubicTo(size.width * 1.03, size.height * 1.14, size.width * 1.04, size.height * 1.14, size.width * 1.05,
        size.height * 1.14);
    path.cubicTo(size.width * 1.05, size.height * 1.14, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 0.95, size.height * 1.19, size.width * 0.95,
        size.height * 1.19);
    path.cubicTo(size.width * 0.95, size.height * 1.19, size.width * 0.8, size.height * 1.18, size.width * 0.8,
        size.height * 1.18);
    path.cubicTo(size.width * 0.8, size.height * 1.18, size.width * 0.64, size.height * 1.19, size.width * 0.64,
        size.height * 1.19);
    path.cubicTo(size.width * 0.64, size.height * 1.19, size.width * 0.47, size.height * 1.18, size.width * 0.47,
        size.height * 1.18);
    path.cubicTo(
        size.width * 0.47, size.height * 1.18, size.width / 4, size.height * 1.18, size.width / 4, size.height * 1.18);
    path.cubicTo(size.width / 4, size.height * 1.18, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.14, size.width * 0.05,
        size.height * 1.14);
    path.cubicTo(size.width * 0.13, size.height * 1.13, size.width * 0.22, size.height * 1.13, size.width * 0.22,
        size.height * 1.13);
    path.cubicTo(size.width * 0.22, size.height * 1.13, size.width * 0.22, size.height * 1.13, size.width * 0.22,
        size.height * 1.13);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 7

    path = Path();
    path.lineTo(size.width * 0.13, size.height * 1.15);
    path.cubicTo(size.width * 0.14, size.height * 1.15, size.width * 0.34, size.height * 1.17, size.width * 0.34,
        size.height * 1.17);
    path.cubicTo(size.width * 0.34, size.height * 1.17, size.width * 0.52, size.height * 1.15, size.width * 0.52,
        size.height * 1.15);
    path.cubicTo(size.width * 0.52, size.height * 1.15, size.width * 0.79, size.height * 1.15, size.width * 0.79,
        size.height * 1.15);
    path.cubicTo(size.width * 0.79, size.height * 1.15, size.width * 0.87, size.height * 1.14, size.width * 0.87,
        size.height * 1.14);
    path.cubicTo(size.width * 0.87, size.height * 1.14, size.width, size.height * 1.16, size.width, size.height * 1.16);
    path.cubicTo(size.width, size.height * 1.16, size.width, size.height * 1.17, size.width * 1.05, size.height * 1.17);
    path.cubicTo(size.width * 1.05, size.height * 1.17, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 0.82, size.height * 1.18, size.width * 0.82,
        size.height * 1.18);
    path.cubicTo(size.width * 0.82, size.height * 1.18, size.width * 0.7, size.height * 1.19, size.width * 0.7,
        size.height * 1.19);
    path.cubicTo(size.width * 0.7, size.height * 1.19, size.width * 0.59, size.height * 1.18, size.width * 0.59,
        size.height * 1.18);
    path.cubicTo(size.width * 0.59, size.height * 1.18, size.width * 0.52, size.height * 1.19, size.width * 0.52,
        size.height * 1.19);
    path.cubicTo(size.width * 0.52, size.height * 1.19, size.width * 0.38, size.height * 1.18, size.width * 0.38,
        size.height * 1.18);
    path.cubicTo(size.width * 0.38, size.height * 1.18, size.width * 0.22, size.height * 1.19, size.width / 5,
        size.height * 1.18);
    path.cubicTo(size.width / 5, size.height * 1.18, size.width * 0.1, size.height * 1.18, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.17, size.width * 0.05,
        size.height * 1.17);
    path.cubicTo(size.width * 0.08, size.height * 1.17, size.width * 0.13, size.height * 1.15, size.width * 0.13,
        size.height * 1.15);
    path.cubicTo(size.width * 0.13, size.height * 1.15, size.width * 0.13, size.height * 1.15, size.width * 0.13,
        size.height * 1.15);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 8

    path = Path();
    path.lineTo(size.width * 0.11, size.height * 1.17);
    path.cubicTo(size.width * 0.11, size.height * 1.17, size.width * 0.34, size.height * 1.18, size.width * 0.34,
        size.height * 1.18);
    path.cubicTo(size.width * 0.34, size.height * 1.18, size.width * 0.4, size.height * 1.17, size.width * 0.4,
        size.height * 1.17);
    path.cubicTo(size.width * 0.4, size.height * 1.17, size.width * 0.58, size.height * 1.18, size.width * 0.58,
        size.height * 1.18);
    path.cubicTo(size.width * 0.58, size.height * 1.18, size.width * 0.77, size.height * 1.17, size.width * 0.77,
        size.height * 1.17);
    path.cubicTo(size.width * 0.77, size.height * 1.17, size.width * 0.9, size.height * 1.18, size.width * 0.9,
        size.height * 1.18);
    path.cubicTo(size.width * 0.9, size.height * 1.18, size.width * 1.05, size.height * 1.18, size.width * 1.05,
        size.height * 1.18);
    path.cubicTo(size.width * 1.05, size.height * 1.18, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.02, size.height * 1.19, size.width * 1.02,
        size.height * 1.19);
    path.cubicTo(size.width * 1.02, size.height * 1.19, size.width, size.height * 1.2, size.width, size.height * 1.2);
    path.cubicTo(
        size.width, size.height * 1.2, size.width * 0.93, size.height * 1.2, size.width * 0.92, size.height * 1.21);
    path.cubicTo(size.width * 0.92, size.height * 1.21, size.width * 0.85, size.height * 1.2, size.width * 0.85,
        size.height * 1.2);
    path.cubicTo(size.width * 0.85, size.height * 1.2, size.width * 0.82, size.height * 1.21, size.width * 0.82,
        size.height * 1.21);
    path.cubicTo(size.width * 0.82, size.height * 1.21, size.width * 0.67, size.height * 1.21, size.width * 0.67,
        size.height * 1.21);
    path.cubicTo(size.width * 0.67, size.height * 1.21, size.width * 0.55, size.height * 1.19, size.width * 0.55,
        size.height * 1.19);
    path.cubicTo(size.width * 0.55, size.height * 1.19, size.width * 0.4, size.height * 1.21, size.width * 0.4,
        size.height * 1.21);
    path.cubicTo(size.width * 0.4, size.height * 1.21, size.width * 0.37, size.height * 1.2, size.width * 0.37,
        size.height * 1.2);
    path.cubicTo(size.width * 0.37, size.height * 1.2, size.width * 0.12, size.height * 1.19, size.width * 0.12,
        size.height * 1.19);
    path.cubicTo(size.width * 0.12, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.18, size.width * 0.05,
        size.height * 1.18);
    path.cubicTo(size.width * 0.05, size.height * 1.18, size.width * 0.11, size.height * 1.17, size.width * 0.11,
        size.height * 1.17);
    path.cubicTo(size.width * 0.11, size.height * 1.17, size.width * 0.11, size.height * 1.17, size.width * 0.11,
        size.height * 1.17);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 9

    path = Path();
    path.lineTo(size.width * 0.14, size.height * 1.18);
    path.cubicTo(size.width * 0.14, size.height * 1.18, size.width * 0.23, size.height * 1.16, size.width * 0.23,
        size.height * 1.16);
    path.cubicTo(size.width * 0.23, size.height * 1.16, size.width * 0.52, size.height * 1.18, size.width * 0.52,
        size.height * 1.18);
    path.cubicTo(size.width * 0.52, size.height * 1.18, size.width * 0.64, size.height * 1.18, size.width * 0.64,
        size.height * 1.18);
    path.cubicTo(size.width * 0.64, size.height * 1.18, size.width * 0.76, size.height * 1.16, size.width * 0.76,
        size.height * 1.16);
    path.cubicTo(size.width * 0.76, size.height * 1.16, size.width * 1.05, size.height * 1.17, size.width * 1.05,
        size.height * 1.17);
    path.cubicTo(size.width * 1.05, size.height * 1.17, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 0.86, size.height * 1.2, size.width * 0.86,
        size.height * 1.2);
    path.cubicTo(size.width * 0.86, size.height * 1.2, size.width * 0.73, size.height * 1.2, size.width * 0.72,
        size.height * 1.2);
    path.cubicTo(size.width * 0.72, size.height * 1.21, size.width * 0.6, size.height * 1.2, size.width * 0.6,
        size.height * 1.2);
    path.cubicTo(size.width * 0.6, size.height * 1.2, size.width * 0.56, size.height * 1.2, size.width * 0.55,
        size.height * 1.2);
    path.cubicTo(size.width * 0.55, size.height * 1.2, size.width * 0.51, size.height * 1.2, size.width * 0.51,
        size.height * 1.2);
    path.cubicTo(
        size.width * 0.51, size.height * 1.2, size.width / 3, size.height * 1.2, size.width / 3, size.height * 1.2);
    path.cubicTo(size.width / 3, size.height * 1.2, size.width * 0.19, size.height * 1.19, size.width * 0.19,
        size.height * 1.19);
    path.cubicTo(size.width * 0.19, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.17, size.width * 0.05,
        size.height * 1.17);
    path.cubicTo(size.width * 0.05, size.height * 1.17, size.width * 0.14, size.height * 1.18, size.width * 0.14,
        size.height * 1.18);
    path.cubicTo(size.width * 0.14, size.height * 1.18, size.width * 0.14, size.height * 1.18, size.width * 0.14,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 10

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 0.11, size.height * 1.17);
    path.cubicTo(size.width * 0.11, size.height * 1.17, size.width * 0.34, size.height * 1.18, size.width * 0.34,
        size.height * 1.18);
    path.cubicTo(size.width * 0.34, size.height * 1.18, size.width * 0.4, size.height * 1.17, size.width * 0.4,
        size.height * 1.17);
    path.cubicTo(size.width * 0.4, size.height * 1.17, size.width * 0.58, size.height * 1.18, size.width * 0.58,
        size.height * 1.18);
    path.cubicTo(size.width * 0.58, size.height * 1.18, size.width * 0.77, size.height * 1.17, size.width * 0.77,
        size.height * 1.17);
    path.cubicTo(size.width * 0.77, size.height * 1.17, size.width * 0.9, size.height * 1.18, size.width * 0.9,
        size.height * 1.18);
    path.cubicTo(size.width * 0.9, size.height * 1.18, size.width * 1.05, size.height * 1.18, size.width * 1.05,
        size.height * 1.18);
    path.cubicTo(size.width * 1.05, size.height * 1.18, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.02, size.height * 1.19, size.width * 1.02,
        size.height * 1.19);
    path.cubicTo(size.width * 1.02, size.height * 1.19, size.width, size.height * 1.2, size.width, size.height * 1.2);
    path.cubicTo(
        size.width, size.height * 1.2, size.width * 0.93, size.height * 1.2, size.width * 0.92, size.height * 1.21);
    path.cubicTo(size.width * 0.92, size.height * 1.21, size.width * 0.85, size.height * 1.2, size.width * 0.85,
        size.height * 1.2);
    path.cubicTo(size.width * 0.85, size.height * 1.2, size.width * 0.82, size.height * 1.21, size.width * 0.82,
        size.height * 1.21);
    path.cubicTo(size.width * 0.82, size.height * 1.21, size.width * 0.67, size.height * 1.21, size.width * 0.67,
        size.height * 1.21);
    path.cubicTo(size.width * 0.67, size.height * 1.21, size.width * 0.55, size.height * 1.19, size.width * 0.55,
        size.height * 1.19);
    path.cubicTo(size.width * 0.55, size.height * 1.19, size.width * 0.4, size.height * 1.21, size.width * 0.4,
        size.height * 1.21);
    path.cubicTo(size.width * 0.4, size.height * 1.21, size.width * 0.37, size.height * 1.2, size.width * 0.37,
        size.height * 1.2);
    path.cubicTo(size.width * 0.37, size.height * 1.2, size.width * 0.12, size.height * 1.19, size.width * 0.12,
        size.height * 1.19);
    path.cubicTo(size.width * 0.12, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.18, size.width * 0.05,
        size.height * 1.18);
    path.cubicTo(size.width * 0.05, size.height * 1.18, size.width * 0.11, size.height * 1.17, size.width * 0.11,
        size.height * 1.17);
    path.cubicTo(size.width * 0.11, size.height * 1.17, size.width * 0.11, size.height * 1.17, size.width * 0.11,
        size.height * 1.17);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 11

    path = Path();
    path.lineTo(size.width * 1.09, size.height * 1.05);
    path.cubicTo(size.width * 1.09, size.height * 1.05, size.width * 1.09, size.height * 1.04, size.width * 1.09,
        size.height * 1.04);
    path.cubicTo(size.width * 1.09, size.height * 1.04, size.width * 1.09, size.height * 1.04, size.width * 1.09,
        size.height * 1.04);
    path.cubicTo(size.width * 1.09, size.height * 1.04, size.width * 1.09, size.height * 0.71, size.width * 1.09,
        size.height * 0.71);
    path.cubicTo(size.width * 1.09, size.height * 0.7, size.width * 1.09, size.height * 0.7, size.width * 1.09,
        size.height * 0.7);
    path.cubicTo(size.width * 1.09, size.height * 0.68, size.width * 1.09, size.height * 0.59, size.width * 1.09,
        size.height * 0.59);
    path.cubicTo(size.width * 1.09, size.height * 0.59, size.width * 1.09, size.height * 0.26, size.width * 1.09,
        size.height * 0.26);
    path.cubicTo(size.width * 1.09, size.height * 0.26, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.07, size.height * 0.1, size.width * 1.07,
        size.height * 0.1);
    path.cubicTo(
        size.width * 1.07, size.height / 5, size.width * 1.08, size.height / 4, size.width * 1.08, size.height / 4);
    path.cubicTo(size.width * 1.08, size.height / 4, size.width * 1.07, size.height * 0.36, size.width * 1.07,
        size.height * 0.36);
    path.cubicTo(size.width * 1.07, size.height * 0.36, size.width * 1.07, size.height * 0.43, size.width * 1.07,
        size.height * 0.43);
    path.cubicTo(size.width * 1.07, size.height * 0.43, size.width * 1.07, size.height * 0.49, size.width * 1.07,
        size.height * 0.49);
    path.cubicTo(size.width * 1.07, size.height * 0.49, size.width * 1.07, size.height * 0.73, size.width * 1.07,
        size.height * 0.73);
    path.cubicTo(size.width * 1.07, size.height * 0.73, size.width * 1.07, size.height * 0.81, size.width * 1.07,
        size.height * 0.81);
    path.cubicTo(size.width * 1.07, size.height * 0.81, size.width * 1.07, size.height * 0.85, size.width * 1.07,
        size.height * 0.85);
    path.cubicTo(size.width * 1.07, size.height * 0.85, size.width * 1.07, size.height * 0.92, size.width * 1.07,
        size.height * 0.92);
    path.cubicTo(size.width * 1.07, size.height * 0.92, size.width * 1.07, size.height * 1.06, size.width * 1.07,
        size.height * 1.06);
    path.cubicTo(size.width * 1.07, size.height * 1.06, size.width * 1.07, size.height * 1.06, size.width * 1.07,
        size.height * 1.06);
    path.cubicTo(size.width * 1.07, size.height * 1.06, size.width * 1.07, size.height * 1.07, size.width * 1.07,
        size.height * 1.07);
    path.cubicTo(size.width * 1.07, size.height * 1.07, size.width * 1.07, size.height * 1.1, size.width * 1.07,
        size.height * 1.1);
    path.cubicTo(size.width * 1.07, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.09, size.height * 1.05, size.width * 1.09,
        size.height * 1.05);
    path.cubicTo(size.width * 1.09, size.height * 1.05, size.width * 1.09, size.height * 1.05, size.width * 1.09,
        size.height * 1.05);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 12

    path = Path();
    path.lineTo(size.width * 1.09, size.height * 0.77);
    path.cubicTo(size.width * 1.09, size.height * 0.77, size.width * 1.09, size.height * 0.47, size.width * 1.09,
        size.height * 0.47);
    path.cubicTo(size.width * 1.09, size.height * 0.47, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.07, size.height * 0.1, size.width * 1.07,
        size.height * 0.1);
    path.cubicTo(size.width * 1.07, size.height * 0.1, size.width * 1.08, size.height * 0.4, size.width * 1.08,
        size.height * 0.4);
    path.cubicTo(size.width * 1.08, size.height * 0.4, size.width * 1.06, size.height * 0.63, size.width * 1.06,
        size.height * 0.63);
    path.cubicTo(size.width * 1.06, size.height * 0.63, size.width * 1.06, size.height * 1.02, size.width * 1.06,
        size.height * 1.02);
    path.cubicTo(size.width * 1.06, size.height * 1.02, size.width * 1.07, size.height * 1.1, size.width * 1.07,
        size.height * 1.1);
    path.cubicTo(size.width * 1.07, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.09, size.height * 0.77, size.width * 1.09,
        size.height * 0.77);
    path.cubicTo(size.width * 1.09, size.height * 0.77, size.width * 1.09, size.height * 0.77, size.width * 1.09,
        size.height * 0.77);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 13

    path = Path();
    path.lineTo(size.width * 1.09, size.height * 0.6);
    path.cubicTo(size.width * 1.09, size.height * 0.6, size.width * 1.09, size.height * 0.48, size.width * 1.09,
        size.height * 0.48);
    path.cubicTo(size.width * 1.09, size.height * 0.48, size.width * 1.1, size.height * 0.1, size.width * 1.1,
        size.height * 0.1);
    path.cubicTo(size.width * 1.1, size.height * 0.1, size.width * 1.08, size.height * 0.1, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(size.width * 1.08, size.height / 5, size.width * 1.08, size.height * 0.37, size.width * 1.08,
        size.height * 0.37);
    path.cubicTo(size.width * 1.08, size.height * 0.37, size.width * 1.08, size.height * 0.6, size.width * 1.08,
        size.height * 0.6);
    path.cubicTo(size.width * 1.08, size.height * 0.6, size.width * 1.08, size.height * 0.67, size.width * 1.08,
        size.height * 0.67);
    path.cubicTo(size.width * 1.08, size.height * 0.67, size.width * 1.08, size.height * 0.83, size.width * 1.08,
        size.height * 0.83);
    path.cubicTo(size.width * 1.08, size.height * 0.83, size.width * 1.08, size.height * 1.03, size.width * 1.08,
        size.height * 1.03);
    path.cubicTo(size.width * 1.08, size.height * 1.03, size.width * 1.08, size.height * 1.1, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(
        size.width * 1.08, size.height * 1.1, size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.1);
    path.cubicTo(size.width * 1.1, size.height * 1.1, size.width * 1.09, size.height * 0.6, size.width * 1.09,
        size.height * 0.6);
    path.cubicTo(size.width * 1.09, size.height * 0.6, size.width * 1.09, size.height * 0.6, size.width * 1.09,
        size.height * 0.6);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 14

    path = Path();
    path.lineTo(size.width * 1.09, size.height * 0.87);
    path.cubicTo(
        size.width * 1.09, size.height * 0.87, size.width * 1.09, size.height / 3, size.width * 1.09, size.height / 3);
    path.cubicTo(
        size.width * 1.09, size.height / 3, size.width * 1.09, size.height * 0.3, size.width * 1.09, size.height * 0.3);
    path.cubicTo(size.width * 1.09, size.height * 0.3, size.width * 1.09, size.height * 0.22, size.width * 1.09,
        size.height * 0.22);
    path.cubicTo(size.width * 1.09, size.height * 0.22, size.width * 1.09, size.height * 0.19, size.width * 1.09,
        size.height * 0.19);
    path.cubicTo(size.width * 1.09, size.height * 0.19, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.08, size.height * 0.1, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(size.width * 1.08, size.height * 0.1, size.width * 1.08, size.height * 0.18, size.width * 1.08,
        size.height * 0.18);
    path.cubicTo(size.width * 1.08, size.height * 0.18, size.width * 1.08, size.height * 0.42, size.width * 1.08,
        size.height * 0.43);
    path.cubicTo(size.width * 1.08, size.height * 0.45, size.width * 1.08, size.height * 0.66, size.width * 1.08,
        size.height * 0.66);
    path.cubicTo(size.width * 1.08, size.height * 0.66, size.width * 1.08, size.height * 0.82, size.width * 1.08,
        size.height * 0.82);
    path.cubicTo(size.width * 1.08, size.height * 0.82, size.width * 1.08, size.height * 1.06, size.width * 1.08,
        size.height * 1.06);
    path.cubicTo(size.width * 1.08, size.height * 1.06, size.width * 1.08, size.height * 1.1, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(size.width * 1.08, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.09, size.height * 0.87, size.width * 1.09,
        size.height * 0.87);
    path.cubicTo(size.width * 1.09, size.height * 0.87, size.width * 1.09, size.height * 0.87, size.width * 1.09,
        size.height * 0.87);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 15

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 1.09, size.height * 0.6);
    path.cubicTo(size.width * 1.09, size.height * 0.6, size.width * 1.09, size.height * 0.48, size.width * 1.09,
        size.height * 0.48);
    path.cubicTo(size.width * 1.09, size.height * 0.48, size.width * 1.1, size.height * 0.1, size.width * 1.1,
        size.height * 0.1);
    path.cubicTo(size.width * 1.1, size.height * 0.1, size.width * 1.08, size.height * 0.1, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(size.width * 1.08, size.height / 5, size.width * 1.08, size.height * 0.37, size.width * 1.08,
        size.height * 0.37);
    path.cubicTo(size.width * 1.08, size.height * 0.37, size.width * 1.08, size.height * 0.6, size.width * 1.08,
        size.height * 0.6);
    path.cubicTo(size.width * 1.08, size.height * 0.6, size.width * 1.08, size.height * 0.67, size.width * 1.08,
        size.height * 0.67);
    path.cubicTo(size.width * 1.08, size.height * 0.67, size.width * 1.08, size.height * 0.83, size.width * 1.08,
        size.height * 0.83);
    path.cubicTo(size.width * 1.08, size.height * 0.83, size.width * 1.08, size.height * 1.03, size.width * 1.08,
        size.height * 1.03);
    path.cubicTo(size.width * 1.08, size.height * 1.03, size.width * 1.08, size.height * 1.1, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(
        size.width * 1.08, size.height * 1.1, size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.1);
    path.cubicTo(size.width * 1.1, size.height * 1.1, size.width * 1.09, size.height * 0.6, size.width * 1.09,
        size.height * 0.6);
    path.cubicTo(size.width * 1.09, size.height * 0.6, size.width * 1.09, size.height * 0.6, size.width * 1.09,
        size.height * 0.6);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 16

    path = Path();
    path.lineTo(size.width * 0.01, size.height * 1.05);
    path.cubicTo(size.width * 0.01, size.height * 1.05, size.width * 0.01, size.height * 1.04, size.width * 0.01,
        size.height * 1.04);
    path.cubicTo(size.width * 0.01, size.height * 1.04, size.width * 0.01, size.height * 1.04, size.width * 0.01,
        size.height * 1.04);
    path.cubicTo(size.width * 0.01, size.height * 1.04, size.width * 0.01, size.height * 0.71, size.width * 0.01,
        size.height * 0.71);
    path.cubicTo(size.width * 0.01, size.height * 0.7, size.width * 0.01, size.height * 0.7, size.width * 0.01,
        size.height * 0.7);
    path.cubicTo(size.width * 0.01, size.height * 0.68, size.width * 0.01, size.height * 0.63, size.width * 0.01,
        size.height * 0.63);
    path.cubicTo(size.width * 0.01, size.height * 0.63, size.width * 0.01, size.height * 0.26, size.width * 0.01,
        size.height * 0.26);
    path.cubicTo(size.width * 0.01, size.height * 0.26, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.03, size.height * 0.1, size.width * 0.03,
        size.height * 0.1);
    path.cubicTo(size.width * 0.03, size.height / 5, size.width * 0.03, size.height * 0.27, size.width * 0.03,
        size.height * 0.27);
    path.cubicTo(size.width * 0.03, size.height * 0.27, size.width * 0.04, size.height * 0.56, size.width * 0.04,
        size.height * 0.56);
    path.cubicTo(size.width * 0.04, size.height * 0.56, size.width * 0.03, size.height * 0.73, size.width * 0.03,
        size.height * 0.73);
    path.cubicTo(size.width * 0.03, size.height * 0.73, size.width * 0.03, size.height * 1.06, size.width * 0.03,
        size.height * 1.06);
    path.cubicTo(size.width * 0.03, size.height * 1.06, size.width * 0.03, size.height * 1.06, size.width * 0.03,
        size.height * 1.06);
    path.cubicTo(size.width * 0.03, size.height * 1.06, size.width * 0.03, size.height * 1.07, size.width * 0.03,
        size.height * 1.07);
    path.cubicTo(size.width * 0.03, size.height * 1.07, size.width * 0.03, size.height * 1.1, size.width * 0.03,
        size.height * 1.1);
    path.cubicTo(size.width * 0.03, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, size.width * 0.01, size.height * 1.05, size.width * 0.01,
        size.height * 1.05);
    path.cubicTo(size.width * 0.01, size.height * 1.05, size.width * 0.01, size.height * 1.05, size.width * 0.01,
        size.height * 1.05);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 17

    path = Path();
    path.lineTo(size.width * 0.02, size.height * 0.77);
    path.cubicTo(size.width * 0.02, size.height * 0.77, size.width * 0.01, size.height * 0.51, size.width * 0.01,
        size.height * 0.51);
    path.cubicTo(size.width * 0.01, size.height * 0.51, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.03, size.height * 0.1, size.width * 0.03,
        size.height * 0.1);
    path.cubicTo(size.width * 0.03, size.height * 0.1, size.width * 0.04, size.height * 0.27, size.width * 0.04,
        size.height * 0.27);
    path.cubicTo(size.width * 0.04, size.height * 0.27, size.width * 0.02, size.height * 0.38, size.width * 0.02,
        size.height * 0.38);
    path.cubicTo(size.width * 0.02, size.height * 0.38, size.width * 0.04, size.height * 1.02, size.width * 0.04,
        size.height * 1.02);
    path.cubicTo(size.width * 0.04, size.height * 1.02, size.width * 0.03, size.height * 1.1, size.width * 0.03,
        size.height * 1.1);
    path.cubicTo(size.width * 0.03, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, size.width * 0.02, size.height * 0.77, size.width * 0.02,
        size.height * 0.77);
    path.cubicTo(size.width * 0.02, size.height * 0.77, size.width * 0.02, size.height * 0.77, size.width * 0.02,
        size.height * 0.77);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 18

    path = Path();
    path.lineTo(0, size.height * 0.8);
    path.cubicTo(0, size.height * 0.8, size.width * 0.01, size.height * 0.52, size.width * 0.01, size.height * 0.52);
    path.cubicTo(size.width * 0.01, size.height * 0.52, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.02, size.height * 0.1, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(
        size.width * 0.02, size.height / 5, size.width * 0.02, size.height / 3, size.width * 0.02, size.height / 3);
    path.cubicTo(size.width * 0.02, size.height / 3, size.width * 0.02, size.height * 0.64, size.width * 0.02,
        size.height * 0.64);
    path.cubicTo(size.width * 0.02, size.height * 0.64, size.width * 0.02, size.height * 0.67, size.width * 0.02,
        size.height * 0.67);
    path.cubicTo(size.width * 0.02, size.height * 0.67, size.width * 0.02, size.height * 0.83, size.width * 0.02,
        size.height * 0.83);
    path.cubicTo(size.width * 0.02, size.height * 0.83, size.width * 0.02, size.height * 1.03, size.width * 0.02,
        size.height * 1.03);
    path.cubicTo(size.width * 0.02, size.height * 1.03, size.width * 0.02, size.height * 1.1, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, 0, size.height * 0.8, 0, size.height * 0.8);
    path.cubicTo(0, size.height * 0.8, 0, size.height * 0.8, 0, size.height * 0.8);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 19

    path = Path();
    path.lineTo(0, size.height * 0.9);
    path.cubicTo(0, size.height * 0.9, size.width * 0.01, size.height * 0.37, size.width * 0.01, size.height * 0.37);
    path.cubicTo(size.width * 0.01, size.height * 0.37, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.02, size.height * 0.1, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(size.width * 0.02, size.height * 0.1, size.width * 0.02, size.height * 0.18, size.width * 0.02,
        size.height * 0.18);
    path.cubicTo(size.width * 0.02, size.height * 0.18, size.width * 0.02, size.height * 0.45, size.width * 0.02,
        size.height * 0.47);
    path.cubicTo(size.width * 0.02, size.height * 0.49, size.width * 0.03, size.height * 0.66, size.width * 0.03,
        size.height * 0.66);
    path.cubicTo(size.width * 0.03, size.height * 0.66, size.width * 0.02, size.height * 0.82, size.width * 0.02,
        size.height * 0.82);
    path.cubicTo(size.width * 0.02, size.height * 0.82, size.width * 0.02, size.height * 1.06, size.width * 0.02,
        size.height * 1.06);
    path.cubicTo(size.width * 0.02, size.height * 1.06, size.width * 0.02, size.height * 1.1, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, 0, size.height * 0.9, 0, size.height * 0.9);
    path.cubicTo(0, size.height * 0.9, 0, size.height * 0.9, 0, size.height * 0.9);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 20

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(0, size.height * 0.8);
    path.cubicTo(0, size.height * 0.8, size.width * 0.01, size.height * 0.52, size.width * 0.01, size.height * 0.52);
    path.cubicTo(size.width * 0.01, size.height * 0.52, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.02, size.height * 0.1, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(
        size.width * 0.02, size.height / 5, size.width * 0.02, size.height / 3, size.width * 0.02, size.height / 3);
    path.cubicTo(size.width * 0.02, size.height / 3, size.width * 0.02, size.height * 0.64, size.width * 0.02,
        size.height * 0.64);
    path.cubicTo(size.width * 0.02, size.height * 0.64, size.width * 0.02, size.height * 0.67, size.width * 0.02,
        size.height * 0.67);
    path.cubicTo(size.width * 0.02, size.height * 0.67, size.width * 0.02, size.height * 0.83, size.width * 0.02,
        size.height * 0.83);
    path.cubicTo(size.width * 0.02, size.height * 0.83, size.width * 0.02, size.height * 1.03, size.width * 0.02,
        size.height * 1.03);
    path.cubicTo(size.width * 0.02, size.height * 1.03, size.width * 0.02, size.height * 1.1, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, 0, size.height * 0.8, 0, size.height * 0.8);
    path.cubicTo(0, size.height * 0.8, 0, size.height * 0.8, 0, size.height * 0.8);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 21

    path = Path();
    path.lineTo(size.width * 1.07, size.height * 0.06);
    path.cubicTo(size.width * 1.07, size.height * 0.06, size.width * 1.07, size.height * 0.08, size.width * 1.07,
        size.height * 0.1);
    path.cubicTo(size.width * 1.07, size.height * 0.1, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.09, size.height * 0.05, size.width * 1.09,
        size.height * 0.05);
    path.cubicTo(size.width * 1.09, size.height * 0.05, size.width * 1.08, size.height * 0.02, size.width * 1.08,
        size.height * 0.02);
    path.cubicTo(size.width * 1.08, size.height * 0.02, size.width * 1.05, size.height * 0.02, size.width * 1.05,
        size.height * 0.02);
    path.cubicTo(size.width * 1.05, size.height * 0.02, size.width * 1.05, size.height * 0.02, size.width * 1.05,
        size.height * 0.02);
    path.cubicTo(size.width * 1.05, size.height * 0.02, size.width * 1.05, size.height * 0.07, size.width * 1.05,
        size.height * 0.07);
    path.cubicTo(size.width * 1.05, size.height * 0.06, size.width * 1.07, size.height * 0.06, size.width * 1.07,
        size.height * 0.06);
    path.cubicTo(size.width * 1.07, size.height * 0.06, size.width * 1.07, size.height * 0.06, size.width * 1.07,
        size.height * 0.06);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 22

    path = Path();
    path.lineTo(size.width * 1.06, size.height * 0.02);
    path.cubicTo(size.width * 1.06, size.height * 0.02, size.width * 1.08, size.height * 0.05, size.width * 1.08,
        size.height * 0.05);
    path.cubicTo(size.width * 1.08, size.height * 0.05, size.width * 1.07, size.height * 0.1, size.width * 1.07,
        size.height * 0.1);
    path.cubicTo(size.width * 1.07, size.height * 0.1, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.09, size.height * 0.07, size.width * 1.09,
        size.height * 0.07);
    path.cubicTo(size.width * 1.09, size.height * 0.07, size.width * 1.09, size.height * 0.02, size.width * 1.09,
        size.height * 0.02);
    path.cubicTo(size.width * 1.09, size.height * 0.02, size.width * 1.07, size.height * 0.02, size.width * 1.07,
        size.height * 0.02);
    path.cubicTo(size.width * 1.07, size.height * 0.02, size.width * 1.05, size.height * 0.02, size.width * 1.05,
        size.height * 0.02);
    path.cubicTo(size.width * 1.05, size.height * 0.02, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.06, size.height * 0.02, size.width * 1.06,
        size.height * 0.02);
    path.cubicTo(size.width * 1.06, size.height * 0.02, size.width * 1.06, size.height * 0.02, size.width * 1.06,
        size.height * 0.02);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 23

    path = Path();
    path.lineTo(size.width * 1.08, size.height * 0.03);
    path.cubicTo(size.width * 1.08, size.height * 0.03, size.width * 1.08, size.height * 0.05, size.width * 1.08,
        size.height * 0.05);
    path.cubicTo(size.width * 1.08, size.height * 0.05, size.width * 1.08, size.height * 0.08, size.width * 1.08,
        size.height * 0.08);
    path.cubicTo(size.width * 1.08, size.height * 0.08, size.width * 1.08, size.height * 0.09, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(
        size.width * 1.08, size.height * 0.1, size.width * 1.1, size.height * 0.1, size.width * 1.1, size.height * 0.1);
    path.cubicTo(size.width * 1.1, size.height * 0.1, size.width * 1.1, size.height * 0.05, size.width * 1.1,
        size.height * 0.05);
    path.cubicTo(size.width * 1.1, size.height * 0.05, size.width * 1.09, size.height * 0.01, size.width * 1.09,
        size.height * 0.01);
    path.cubicTo(size.width * 1.09, size.height * 0.01, size.width * 1.08, 0, size.width * 1.08, 0);
    path.cubicTo(size.width * 1.08, 0, size.width * 1.07, size.height * 0.01, size.width * 1.07, size.height * 0.01);
    path.cubicTo(size.width * 1.07, size.height * 0.01, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.08, size.height * 0.03, size.width * 1.08,
        size.height * 0.03);
    path.cubicTo(size.width * 1.08, size.height * 0.03, size.width * 1.08, size.height * 0.03, size.width * 1.08,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 24

    path = Path();
    path.lineTo(size.width * 1.07, size.height * 0.03);
    path.cubicTo(size.width * 1.07, size.height * 0.03, size.width * 1.08, size.height * 0.06, size.width * 1.08,
        size.height * 0.06);
    path.cubicTo(size.width * 1.08, size.height * 0.06, size.width * 1.08, size.height * 0.1, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(size.width * 1.08, size.height * 0.1, size.width * 1.09, size.height * 0.1, size.width * 1.09,
        size.height * 0.1);
    path.cubicTo(size.width * 1.09, size.height * 0.1, size.width * 1.1, size.height * 0.06, size.width * 1.1,
        size.height * 0.06);
    path.cubicTo(size.width * 1.1, size.height * 0.06, size.width * 1.09, size.height * 0.02, size.width * 1.09,
        size.height * 0.02);
    path.cubicTo(size.width * 1.09, size.height * 0.02, size.width * 1.09, 0, size.width * 1.09, 0);
    path.cubicTo(size.width * 1.09, 0, size.width * 1.07, size.height * 0.01, size.width * 1.07, size.height * 0.01);
    path.cubicTo(size.width * 1.07, size.height * 0.01, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.07, size.height * 0.03, size.width * 1.07,
        size.height * 0.03);
    path.cubicTo(size.width * 1.07, size.height * 0.03, size.width * 1.07, size.height * 0.03, size.width * 1.07,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 25

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 1.08, size.height * 0.03);
    path.cubicTo(size.width * 1.08, size.height * 0.03, size.width * 1.08, size.height * 0.05, size.width * 1.08,
        size.height * 0.05);
    path.cubicTo(size.width * 1.08, size.height * 0.05, size.width * 1.08, size.height * 0.08, size.width * 1.08,
        size.height * 0.08);
    path.cubicTo(size.width * 1.08, size.height * 0.08, size.width * 1.08, size.height * 0.09, size.width * 1.08,
        size.height * 0.1);
    path.cubicTo(
        size.width * 1.08, size.height * 0.1, size.width * 1.1, size.height * 0.1, size.width * 1.1, size.height * 0.1);
    path.cubicTo(size.width * 1.1, size.height * 0.1, size.width * 1.1, size.height * 0.05, size.width * 1.1,
        size.height * 0.05);
    path.cubicTo(size.width * 1.1, size.height * 0.05, size.width * 1.09, size.height * 0.01, size.width * 1.09,
        size.height * 0.01);
    path.cubicTo(size.width * 1.09, size.height * 0.01, size.width * 1.08, 0, size.width * 1.08, 0);
    path.cubicTo(size.width * 1.08, 0, size.width * 1.07, size.height * 0.01, size.width * 1.07, size.height * 0.01);
    path.cubicTo(size.width * 1.07, size.height * 0.01, size.width * 1.05, size.height * 0.01, size.width * 1.05,
        size.height * 0.01);
    path.cubicTo(size.width * 1.05, size.height * 0.01, size.width * 1.05, size.height * 0.03, size.width * 1.05,
        size.height * 0.03);
    path.cubicTo(size.width * 1.05, size.height * 0.03, size.width * 1.08, size.height * 0.03, size.width * 1.08,
        size.height * 0.03);
    path.cubicTo(size.width * 1.08, size.height * 0.03, size.width * 1.08, size.height * 0.03, size.width * 1.08,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 26

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 0.06);
    path.cubicTo(size.width * 0.03, size.height * 0.06, size.width * 0.03, size.height * 0.08, size.width * 0.03,
        size.height * 0.1);
    path.cubicTo(size.width * 0.03, size.height * 0.1, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.01, size.height * 0.05, size.width * 0.01,
        size.height * 0.05);
    path.cubicTo(size.width * 0.01, size.height * 0.05, size.width * 0.02, size.height * 0.02, size.width * 0.02,
        size.height * 0.02);
    path.cubicTo(size.width * 0.02, size.height * 0.02, size.width * 0.05, size.height * 0.02, size.width * 0.05,
        size.height * 0.02);
    path.cubicTo(size.width * 0.05, size.height * 0.02, size.width * 0.05, size.height * 0.02, size.width * 0.05,
        size.height * 0.02);
    path.cubicTo(size.width * 0.05, size.height * 0.02, size.width * 0.05, size.height * 0.07, size.width * 0.05,
        size.height * 0.07);
    path.cubicTo(size.width * 0.04, size.height * 0.06, size.width * 0.03, size.height * 0.06, size.width * 0.03,
        size.height * 0.06);
    path.cubicTo(size.width * 0.03, size.height * 0.06, size.width * 0.03, size.height * 0.06, size.width * 0.03,
        size.height * 0.06);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 27

    path = Path();
    path.lineTo(size.width * 0.04, size.height * 0.02);
    path.cubicTo(size.width * 0.04, size.height * 0.02, size.width * 0.02, size.height * 0.05, size.width * 0.02,
        size.height * 0.05);
    path.cubicTo(size.width * 0.02, size.height * 0.05, size.width * 0.03, size.height * 0.1, size.width * 0.03,
        size.height * 0.1);
    path.cubicTo(size.width * 0.03, size.height * 0.1, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.01, size.height * 0.07, size.width * 0.01,
        size.height * 0.07);
    path.cubicTo(size.width * 0.01, size.height * 0.07, size.width * 0.01, size.height * 0.02, size.width * 0.01,
        size.height * 0.02);
    path.cubicTo(size.width * 0.01, size.height * 0.02, size.width * 0.03, size.height * 0.02, size.width * 0.03,
        size.height * 0.02);
    path.cubicTo(size.width * 0.03, size.height * 0.02, size.width * 0.05, size.height * 0.02, size.width * 0.05,
        size.height * 0.02);
    path.cubicTo(size.width * 0.05, size.height * 0.02, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.04, size.height * 0.03, size.width * 0.04, size.height * 0.02, size.width * 0.04,
        size.height * 0.02);
    path.cubicTo(size.width * 0.04, size.height * 0.02, size.width * 0.04, size.height * 0.02, size.width * 0.04,
        size.height * 0.02);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 28

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.02, size.height * 0.05, size.width * 0.02,
        size.height * 0.05);
    path.cubicTo(size.width * 0.02, size.height * 0.05, size.width * 0.02, size.height * 0.08, size.width * 0.02,
        size.height * 0.08);
    path.cubicTo(size.width * 0.02, size.height * 0.08, size.width * 0.02, size.height * 0.09, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(size.width * 0.02, size.height * 0.1, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, 0, size.height * 0.05, 0, size.height * 0.05);
    path.cubicTo(0, size.height * 0.05, size.width * 0.01, size.height * 0.01, size.width * 0.01, size.height * 0.01);
    path.cubicTo(size.width * 0.01, size.height * 0.01, size.width * 0.02, 0, size.width * 0.02, 0);
    path.cubicTo(size.width * 0.02, 0, size.width * 0.03, size.height * 0.01, size.width * 0.03, size.height * 0.01);
    path.cubicTo(size.width * 0.03, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 29

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.02, size.height * 0.05, size.width * 0.02,
        size.height * 0.05);
    path.cubicTo(size.width * 0.02, size.height * 0.05, size.width * 0.02, size.height * 0.1, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(size.width * 0.02, size.height * 0.1, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, size.width * 0.01, size.height * 0.06, size.width * 0.01,
        size.height * 0.06);
    path.cubicTo(size.width * 0.01, size.height * 0.06, size.width * 0.01, size.height * 0.02, size.width * 0.01,
        size.height * 0.02);
    path.cubicTo(size.width * 0.01, size.height * 0.02, size.width * 0.01, 0, size.width * 0.01, 0);
    path.cubicTo(size.width * 0.01, 0, size.width * 0.03, size.height * 0.01, size.width * 0.03, size.height * 0.01);
    path.cubicTo(size.width * 0.03, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 30

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 0.03, size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.02, size.height * 0.05, size.width * 0.02,
        size.height * 0.05);
    path.cubicTo(size.width * 0.02, size.height * 0.05, size.width * 0.02, size.height * 0.08, size.width * 0.02,
        size.height * 0.08);
    path.cubicTo(size.width * 0.02, size.height * 0.08, size.width * 0.02, size.height * 0.09, size.width * 0.02,
        size.height * 0.1);
    path.cubicTo(size.width * 0.02, size.height * 0.1, size.width * 0.01, size.height * 0.1, size.width * 0.01,
        size.height * 0.1);
    path.cubicTo(size.width * 0.01, size.height * 0.1, 0, size.height * 0.05, 0, size.height * 0.05);
    path.cubicTo(0, size.height * 0.05, size.width * 0.01, size.height * 0.01, size.width * 0.01, size.height * 0.01);
    path.cubicTo(size.width * 0.01, size.height * 0.01, size.width * 0.02, 0, size.width * 0.02, 0);
    path.cubicTo(size.width * 0.02, 0, size.width * 0.03, size.height * 0.01, size.width * 0.03, size.height * 0.01);
    path.cubicTo(size.width * 0.03, size.height * 0.01, size.width * 0.05, size.height * 0.01, size.width * 0.05,
        size.height * 0.01);
    path.cubicTo(size.width * 0.05, size.height * 0.01, size.width * 0.05, size.height * 0.03, size.width * 0.05,
        size.height * 0.03);
    path.cubicTo(size.width * 0.05, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    path.cubicTo(size.width * 0.03, size.height * 0.03, size.width * 0.03, size.height * 0.03, size.width * 0.03,
        size.height * 0.03);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 31

    path = Path();
    path.lineTo(size.width * 1.06, size.height * 1.14);
    path.cubicTo(size.width * 1.06, size.height * 1.14, size.width * 1.07, size.height * 1.13, size.width * 1.07,
        size.height * 1.1);
    path.cubicTo(size.width * 1.07, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.09, size.height * 1.15, size.width * 1.09,
        size.height * 1.15);
    path.cubicTo(size.width * 1.09, size.height * 1.15, size.width * 1.08, size.height * 1.18, size.width * 1.08,
        size.height * 1.18);
    path.cubicTo(size.width * 1.08, size.height * 1.18, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.14, size.width * 1.05,
        size.height * 1.14);
    path.cubicTo(size.width * 1.05, size.height * 1.14, size.width * 1.05, size.height * 1.14, size.width * 1.06,
        size.height * 1.14);
    path.cubicTo(size.width * 1.06, size.height * 1.14, size.width * 1.06, size.height * 1.14, size.width * 1.06,
        size.height * 1.14);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 32

    path = Path();
    path.lineTo(size.width * 1.06, size.height * 1.18);
    path.cubicTo(size.width * 1.06, size.height * 1.18, size.width * 1.06, size.height * 1.16, size.width * 1.06,
        size.height * 1.16);
    path.cubicTo(size.width * 1.06, size.height * 1.16, size.width * 1.07, size.height * 1.1, size.width * 1.07,
        size.height * 1.1);
    path.cubicTo(size.width * 1.07, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.09, size.height * 1.13, size.width * 1.09,
        size.height * 1.13);
    path.cubicTo(size.width * 1.09, size.height * 1.13, size.width * 1.09, size.height * 1.18, size.width * 1.09,
        size.height * 1.18);
    path.cubicTo(size.width * 1.09, size.height * 1.18, size.width * 1.07, size.height * 1.19, size.width * 1.07,
        size.height * 1.19);
    path.cubicTo(size.width * 1.07, size.height * 1.19, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.17, size.width * 1.05,
        size.height * 1.17);
    path.cubicTo(size.width * 1.05, size.height * 1.18, size.width * 1.06, size.height * 1.18, size.width * 1.06,
        size.height * 1.18);
    path.cubicTo(size.width * 1.06, size.height * 1.18, size.width * 1.06, size.height * 1.18, size.width * 1.06,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 33

    path = Path();
    path.lineTo(size.width * 1.08, size.height * 1.18);
    path.cubicTo(size.width * 1.08, size.height * 1.18, size.width * 1.08, size.height * 1.16, size.width * 1.08,
        size.height * 1.16);
    path.cubicTo(size.width * 1.08, size.height * 1.15, size.width * 1.08, size.height * 1.13, size.width * 1.08,
        size.height * 1.12);
    path.cubicTo(size.width * 1.08, size.height * 1.12, size.width * 1.08, size.height * 1.11, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(
        size.width * 1.08, size.height * 1.1, size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.1);
    path.cubicTo(size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.15, size.width * 1.1,
        size.height * 1.15);
    path.cubicTo(size.width * 1.1, size.height * 1.15, size.width * 1.09, size.height * 1.19, size.width * 1.09,
        size.height * 1.19);
    path.cubicTo(size.width * 1.09, size.height * 1.19, size.width * 1.08, size.height * 1.2, size.width * 1.08,
        size.height * 1.2);
    path.cubicTo(size.width * 1.08, size.height * 1.2, size.width * 1.07, size.height * 1.2, size.width * 1.07,
        size.height * 1.2);
    path.cubicTo(size.width * 1.07, size.height * 1.2, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.18, size.width * 1.05,
        size.height * 1.18);
    path.cubicTo(size.width * 1.05, size.height * 1.18, size.width * 1.08, size.height * 1.18, size.width * 1.08,
        size.height * 1.18);
    path.cubicTo(size.width * 1.08, size.height * 1.18, size.width * 1.08, size.height * 1.18, size.width * 1.08,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 34

    path = Path();
    path.lineTo(size.width * 1.07, size.height * 1.18);
    path.cubicTo(size.width * 1.07, size.height * 1.18, size.width * 1.08, size.height * 1.16, size.width * 1.08,
        size.height * 1.16);
    path.cubicTo(size.width * 1.08, size.height * 1.16, size.width * 1.08, size.height * 1.1, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(size.width * 1.08, size.height * 1.1, size.width * 1.09, size.height * 1.1, size.width * 1.09,
        size.height * 1.1);
    path.cubicTo(size.width * 1.09, size.height * 1.1, size.width * 1.1, size.height * 1.14, size.width * 1.1,
        size.height * 1.14);
    path.cubicTo(size.width * 1.1, size.height * 1.14, size.width * 1.09, size.height * 1.18, size.width * 1.09,
        size.height * 1.18);
    path.cubicTo(size.width * 1.09, size.height * 1.18, size.width * 1.09, size.height * 1.2, size.width * 1.09,
        size.height * 1.2);
    path.cubicTo(size.width * 1.09, size.height * 1.2, size.width * 1.07, size.height * 1.19, size.width * 1.07,
        size.height * 1.19);
    path.cubicTo(size.width * 1.07, size.height * 1.19, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.17, size.width * 1.05,
        size.height * 1.17);
    path.cubicTo(size.width * 1.05, size.height * 1.17, size.width * 1.07, size.height * 1.18, size.width * 1.07,
        size.height * 1.18);
    path.cubicTo(size.width * 1.07, size.height * 1.18, size.width * 1.07, size.height * 1.18, size.width * 1.07,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 35

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 1.08, size.height * 1.18);
    path.cubicTo(size.width * 1.08, size.height * 1.18, size.width * 1.08, size.height * 1.16, size.width * 1.08,
        size.height * 1.16);
    path.cubicTo(size.width * 1.08, size.height * 1.15, size.width * 1.08, size.height * 1.13, size.width * 1.08,
        size.height * 1.12);
    path.cubicTo(size.width * 1.08, size.height * 1.12, size.width * 1.08, size.height * 1.11, size.width * 1.08,
        size.height * 1.1);
    path.cubicTo(
        size.width * 1.08, size.height * 1.1, size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.1);
    path.cubicTo(size.width * 1.1, size.height * 1.1, size.width * 1.1, size.height * 1.15, size.width * 1.1,
        size.height * 1.15);
    path.cubicTo(size.width * 1.1, size.height * 1.15, size.width * 1.09, size.height * 1.19, size.width * 1.09,
        size.height * 1.19);
    path.cubicTo(size.width * 1.09, size.height * 1.19, size.width * 1.08, size.height * 1.2, size.width * 1.08,
        size.height * 1.2);
    path.cubicTo(size.width * 1.08, size.height * 1.2, size.width * 1.07, size.height * 1.2, size.width * 1.07,
        size.height * 1.2);
    path.cubicTo(size.width * 1.07, size.height * 1.2, size.width * 1.05, size.height * 1.19, size.width * 1.05,
        size.height * 1.19);
    path.cubicTo(size.width * 1.05, size.height * 1.19, size.width * 1.05, size.height * 1.18, size.width * 1.05,
        size.height * 1.18);
    path.cubicTo(size.width * 1.05, size.height * 1.18, size.width * 1.08, size.height * 1.18, size.width * 1.08,
        size.height * 1.18);
    path.cubicTo(size.width * 1.08, size.height * 1.18, size.width * 1.08, size.height * 1.18, size.width * 1.08,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 36

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 1.15);
    path.cubicTo(size.width * 0.03, size.height * 1.14, size.width * 0.03, size.height * 1.13, size.width * 0.03,
        size.height * 1.1);
    path.cubicTo(size.width * 0.03, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, size.width * 0.01, size.height * 1.15, size.width * 0.01,
        size.height * 1.15);
    path.cubicTo(size.width * 0.01, size.height * 1.15, size.width * 0.02, size.height * 1.18, size.width * 0.02,
        size.height * 1.18);
    path.cubicTo(size.width * 0.02, size.height * 1.18, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.14, size.width * 0.05,
        size.height * 1.14);
    path.cubicTo(size.width * 0.04, size.height * 1.14, size.width * 0.03, size.height * 1.15, size.width * 0.03,
        size.height * 1.15);
    path.cubicTo(size.width * 0.03, size.height * 1.15, size.width * 0.03, size.height * 1.15, size.width * 0.03,
        size.height * 1.15);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 37

    path = Path();
    path.lineTo(size.width * 0.04, size.height * 1.18);
    path.cubicTo(size.width * 0.04, size.height * 1.18, size.width * 0.02, size.height * 1.16, size.width * 0.02,
        size.height * 1.16);
    path.cubicTo(size.width * 0.02, size.height * 1.16, size.width * 0.03, size.height * 1.1, size.width * 0.03,
        size.height * 1.1);
    path.cubicTo(size.width * 0.03, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, size.width * 0.01, size.height * 1.13, size.width * 0.01,
        size.height * 1.13);
    path.cubicTo(size.width * 0.01, size.height * 1.13, size.width * 0.01, size.height * 1.18, size.width * 0.01,
        size.height * 1.18);
    path.cubicTo(size.width * 0.01, size.height * 1.18, size.width * 0.03, size.height * 1.19, size.width * 0.03,
        size.height * 1.19);
    path.cubicTo(size.width * 0.03, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.17, size.width * 0.05,
        size.height * 1.17);
    path.cubicTo(size.width * 0.04, size.height * 1.18, size.width * 0.04, size.height * 1.18, size.width * 0.04,
        size.height * 1.18);
    path.cubicTo(size.width * 0.04, size.height * 1.18, size.width * 0.04, size.height * 1.18, size.width * 0.04,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 38

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 1.17);
    path.cubicTo(size.width * 0.03, size.height * 1.17, size.width * 0.03, size.height * 1.15, size.width * 0.03,
        size.height * 1.15);
    path.cubicTo(size.width * 0.03, size.height * 1.14, size.width * 0.02, size.height * 1.13, size.width * 0.02,
        size.height * 1.12);
    path.cubicTo(size.width * 0.02, size.height * 1.12, size.width * 0.02, size.height * 1.11, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, 0, size.height * 1.15, 0, size.height * 1.15);
    path.cubicTo(0, size.height * 1.15, size.width * 0.01, size.height * 1.19, size.width * 0.01, size.height * 1.19);
    path.cubicTo(size.width * 0.01, size.height * 1.19, size.width * 0.02, size.height * 1.2, size.width * 0.02,
        size.height * 1.2);
    path.cubicTo(size.width * 0.02, size.height * 1.2, size.width * 0.03, size.height * 1.2, size.width * 0.03,
        size.height * 1.2);
    path.cubicTo(size.width * 0.03, size.height * 1.2, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.18, size.width * 0.05,
        size.height * 1.18);
    path.cubicTo(size.width * 0.05, size.height * 1.18, size.width * 0.03, size.height * 1.17, size.width * 0.03,
        size.height * 1.17);
    path.cubicTo(size.width * 0.03, size.height * 1.17, size.width * 0.03, size.height * 1.17, size.width * 0.03,
        size.height * 1.17);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 39

    path = Path();
    path.lineTo(size.width * 0.03, size.height * 1.18);
    path.cubicTo(size.width * 0.03, size.height * 1.18, size.width * 0.02, size.height * 1.16, size.width * 0.02,
        size.height * 1.16);
    path.cubicTo(size.width * 0.02, size.height * 1.16, size.width * 0.02, size.height * 1.1, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, size.width * 0.01, size.height * 1.14, size.width * 0.01,
        size.height * 1.14);
    path.cubicTo(size.width * 0.01, size.height * 1.14, size.width * 0.01, size.height * 1.18, size.width * 0.01,
        size.height * 1.18);
    path.cubicTo(size.width * 0.01, size.height * 1.18, size.width * 0.01, size.height * 1.2, size.width * 0.01,
        size.height * 1.2);
    path.cubicTo(size.width * 0.01, size.height * 1.2, size.width * 0.03, size.height * 1.19, size.width * 0.03,
        size.height * 1.19);
    path.cubicTo(size.width * 0.03, size.height * 1.19, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.17, size.width * 0.05,
        size.height * 1.17);
    path.cubicTo(size.width * 0.05, size.height * 1.17, size.width * 0.03, size.height * 1.18, size.width * 0.03,
        size.height * 1.18);
    path.cubicTo(size.width * 0.03, size.height * 1.18, size.width * 0.03, size.height * 1.18, size.width * 0.03,
        size.height * 1.18);
    mainPath.addPath(path, Offset(0, 0));

    // Path number 40

    paint.color = Color(0xffE2DFD8);
    path = Path();
    path.lineTo(size.width * 0.03, size.height * 1.17);
    path.cubicTo(size.width * 0.03, size.height * 1.17, size.width * 0.03, size.height * 1.15, size.width * 0.03,
        size.height * 1.15);
    path.cubicTo(size.width * 0.03, size.height * 1.14, size.width * 0.02, size.height * 1.13, size.width * 0.02,
        size.height * 1.12);
    path.cubicTo(size.width * 0.02, size.height * 1.12, size.width * 0.02, size.height * 1.11, size.width * 0.02,
        size.height * 1.1);
    path.cubicTo(size.width * 0.02, size.height * 1.1, size.width * 0.01, size.height * 1.1, size.width * 0.01,
        size.height * 1.1);
    path.cubicTo(size.width * 0.01, size.height * 1.1, 0, size.height * 1.15, 0, size.height * 1.15);
    path.cubicTo(0, size.height * 1.15, size.width * 0.01, size.height * 1.19, size.width * 0.01, size.height * 1.19);
    path.cubicTo(size.width * 0.01, size.height * 1.19, size.width * 0.02, size.height * 1.2, size.width * 0.02,
        size.height * 1.2);
    path.cubicTo(size.width * 0.02, size.height * 1.2, size.width * 0.03, size.height * 1.2, size.width * 0.03,
        size.height * 1.2);
    path.cubicTo(size.width * 0.03, size.height * 1.2, size.width * 0.05, size.height * 1.19, size.width * 0.05,
        size.height * 1.19);
    path.cubicTo(size.width * 0.05, size.height * 1.19, size.width * 0.05, size.height * 1.18, size.width * 0.05,
        size.height * 1.18);
    path.cubicTo(size.width * 0.05, size.height * 1.18, size.width * 0.03, size.height * 1.17, size.width * 0.03,
        size.height * 1.17);
    path.cubicTo(size.width * 0.03, size.height * 1.17, size.width * 0.03, size.height * 1.17, size.width * 0.03,
        size.height * 1.17);
    mainPath.addPath(path, Offset(0, 0));
    mainPath.addRect(new Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    mainPath.fillType = PathFillType.evenOdd;

    return mainPath;
  }

  Path _flip(Path path, double width) {
    final m = Matrix4.identity()
      ..translate(width)
      ..rotateY(pi);
    return path.transform(m.storage);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
