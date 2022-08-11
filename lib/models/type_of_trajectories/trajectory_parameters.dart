import 'package:freezed_annotation/freezed_annotation.dart';

part 'trajectory_parameters.freezed.dart';

///this is used to display the list of possible trajectories
///along with the image corresponding to each one and its name
enum OptionTypeOfTrajectory {
  expandingSpiral('Expanding spiral', 'assets/spiraling_eyes.png'),
  fallingSpiral('Falling spiral', 'assets/falling_spiral.png');

  const OptionTypeOfTrajectory(this.trajectoryName, this.trajectoryImage);

  final String trajectoryName;
  final String trajectoryImage;
}

@freezed
///The type of trajectory parameters
class TrajectoryParameters with _$TrajectoryParameters {
  factory TrajectoryParameters.spiral({
    required double xCoefficient,
    required double yCoefficient,
  }) = TrajectoryParametersSpiral;

  factory TrajectoryParameters.fallingSpiral({
    required double xCoefficient,
    @Default(0) double displacement,
  }) = TrajectoryParametersFallingSpiral;
}
