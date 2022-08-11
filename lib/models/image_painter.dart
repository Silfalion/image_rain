import 'package:flutter/material.dart';
import 'package:image_rain/models/image_particle.dart';
import 'package:image_rain/presentation/home.dart';
import 'dart:math' as math;

class ImagePainter extends CustomPainter {
  List<ImageParticle> particles;
  ImagePainter({
    required this.particles,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var particle in particles) {
      // canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
      paintImage(
        canvas: canvas,
        rect: Rect.fromLTWH(
          particle.position.dx,
          particle.position.dy,
          particle.size,
          particle.size,
        ),
        image: imageInfo.image,
        filterQuality: FilterQuality.high,
      );
      canvas.rotate(120 * math.pi / 180);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
