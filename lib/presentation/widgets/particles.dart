import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_rain/models/image_painter.dart';
import 'package:image_rain/models/image_particle.dart';
import 'package:image_rain/models/type_of_trajectories/trajectory_parameters.dart';
import 'package:image_rain/presentation/widgets/image_selector.dart';
import 'package:image_rain/presentation/widgets/trajectory_type_selector.dart';

import 'package:simple_animations/simple_animations.dart';

class Particles extends StatefulWidget {
  final int numberOfParticles;
  final Size windowSize;
  const Particles({
    super.key,
    required this.numberOfParticles,
    required this.windowSize,
  });

  @override
  State<Particles> createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> with AnimationMixin {
  final Random random = Random();

  final List<ImageParticle> particles = [];

  late Timer timer;

  double counter = 0.1;
  double increment = pi / 10;

  Tween constantTween = Tween<double>(begin: 0, end: 12);

  @override
  void initState() {
    super.initState();
    List.generate(
      widget.numberOfParticles,
      (index) => particles.add(
        ImageParticle(
          0,
          widget.windowSize.width / 2,
          // typeOfTrajectory: TypeOfTrajectory.spiral(
          //   xCoefficient: Utils.range(4, 7),
          //   yCoefficient: Utils.range(4, 7),
          // ),
          typeOfTrajectory: TrajectoryParametersFallingSpiral(
            xCoefficient: Utils.range(4, 20),
          ),
        ),
      ),
    );

    constantTween.animate(controller).addListener(() {
      setState(() {
        for (var particle in particles) {
          particle.updatePosition(counter);
        }
        counter += increment;
      });
    });

    controller.repeat();

    // timer = Timer.periodic(
    //   const Duration(milliseconds: 1000 ~/ 60),
    //   (timer) {
    //     setState(() {
    //       for (var particle in particles) {
    //         //loop falling
    //         particle.position += Offset(cos(counter) * 10, particle.dy);
    //         //spiral
    //         // particle.position += Offset(counter*cos(counter)*2,counter* sin(counter)*2);

    //       }
    //       counter += increment;
    //     });
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CustomPaint(
            painter: ImagePainter(
              particles: particles,
            ),
            child: const Center(
                child: SizedBox(
              width: 200,
              height: 100,
            )),
          ),
        ),
        TrajectoryTypeSelector(particles),
        ImageSelector(controller: controller)
      ],
    );
  }
}
