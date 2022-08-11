import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_rain/models/type_of_trajectories/trajectory_parameters.dart';
import 'package:simple_animations/simple_animations.dart';

enum ParticleProperties {
  xAis,
  yAxis,
}

class ImageParticle {
  late Offset position;
  TrajectoryParameters typeOfTrajectory;
  double startingAngle;
  double size;

  ImageParticle(
    double? startingPointY,
    double? startingPointX, {
    required this.typeOfTrajectory,
    double? startingAngle,
  })  : startingAngle = startingAngle ?? Utils.range(-pi, pi),
        size = Utils.range(
            60, (startingPointY ?? 2000) * (startingPointX ?? 200) / 10000) {
    final x = startingPointX ?? Utils.range(0, 200.0);
    final y = startingPointY ?? 0.0;

    position = Offset(x, y);
  }

  void updatePosition(double counter) {
    Offset? newOffset;

    typeOfTrajectory.map(
      spiral: (value) {
        newOffset = Offset(
          value.xCoefficient * cos(startingAngle + counter) * counter,
          value.yCoefficient * sin(startingAngle + counter) * counter,
        );
      },
      fallingSpiral: (value) => newOffset = Offset(
        value.xCoefficient * cos(startingAngle + counter) * 2,
        sin(startingAngle + counter) * counter + 5,
      ),
    );

    try {
      position += newOffset!;
    } catch (e, stk) {
      if (kDebugMode) {
        print(stk);
      }
      throw Exception(
          "no new offset was able to be calculated. Check for any type of trajectory case you may have forgotten.");
    }
  }
}

class Utils {
  static final rng = Random();
  static double range(double min, double max) {
    return rng.nextDouble() * (max - min) + min;
  }
}
