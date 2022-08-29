import 'package:flutter/material.dart';

class ShapeContainer extends StatelessWidget {
  const ShapeContainer({
    super.key,
    required this.shape,
  });

  final String shape;

  @override
  Widget build(BuildContext context) {
    if (shape == 'Triangle') {
      return CustomPaint(
        size: const Size(
          100.0,
          100.0,
        ),
        painter: TrianglePainter(),
      );
    } else {
      return CustomPaint(
        size: const Size(
          100.0,
          100.0,
        ),
        painter: RectanglePainter(),
      );
    }
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.deepOrange;
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.deepPurple;
    Rect rect =
        Rect.fromLTRB(0, size.height / 4, size.width, size.height / 4 * 3);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
