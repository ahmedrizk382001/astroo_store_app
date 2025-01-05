import 'package:flutter/material.dart';

class AuthCustomPainter extends CustomPainter {
  AuthCustomPainter({required this.gradient, super.repaint});

  final LinearGradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // Create the path for the custom shape
    final path = Path();
    _pathChoeses(path, size);

    // Paint the gradient only within the bounds of the path
    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(
            0, 0, size.width, size.height), // Gradient spans the entire canvas
      );

    canvas.drawPath(path, paint);
  }

  void _pathChoeses(Path path, Size size) {
    // Ensure the shape uses the full canvas dimensions properly
    path
      ..moveTo(0, size.height * 0.10) // Start at the left side of the canvas
      ..lineTo(size.width, size.height) // Bottom-right corner
      ..lineTo(size.width,
          size.height * 1.01) // Slightly outside the canvas for aesthetic
      ..lineTo(0, size.height * 1.0) // Back to the bottom-left corner
      ..close(); // Close the path
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Always repaint if required
  }
}
