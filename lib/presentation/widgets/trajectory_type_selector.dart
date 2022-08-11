import 'package:flutter/material.dart';
import 'package:image_rain/models/image_particle.dart';
import 'package:image_rain/models/type_of_trajectories/trajectory_parameters.dart';
import 'package:intersperse/intersperse.dart';

class TrajectoryTypeSelector extends StatefulWidget {
  const TrajectoryTypeSelector(
    this.particles, {
    super.key,
  });

  final List<ImageParticle> particles;

  @override
  State<TrajectoryTypeSelector> createState() => _TrajectoryTypeSelectorState();
}

class _TrajectoryTypeSelectorState extends State<TrajectoryTypeSelector> {
  OptionTypeOfTrajectory currentType = OptionTypeOfTrajectory.fallingSpiral;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 130,
        padding: EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(15),
          ),
          color: Colors.amber,
        ),
        child: ListView(
          shrinkWrap: true,
          children: OptionTypeOfTrajectory.values
              .map<Widget>(
                (trajectoryType) => ElevatedButton(
                  onPressed: trajectoryType != currentType
                      ? () {
                          setState(() {
                            changeTrajectory(trajectoryType);
                            currentType = trajectoryType;
                          });
                        }
                      : null,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        trajectoryType.trajectoryImage,
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        trajectoryType.trajectoryName,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
              .intersperse(const SizedBox(height: 10))
              .toList(),
        ),
      ),
    );
  }

  changeTrajectory(OptionTypeOfTrajectory typeOfTrajectory) {
    switch (typeOfTrajectory) {
      case OptionTypeOfTrajectory.expandingSpiral:
        for (ImageParticle particle in widget.particles) {
          particle.typeOfTrajectory = TrajectoryParameters.spiral(
            xCoefficient: Utils.range(4, 7),
            yCoefficient: Utils.range(4, 7),
          );
        }
        break;
      case OptionTypeOfTrajectory.fallingSpiral:
        for (ImageParticle particle in widget.particles) {
          particle.typeOfTrajectory = TrajectoryParametersFallingSpiral(
              xCoefficient: Utils.range(4, 20));
        }
        break;
    }
  }
}
