// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trajectory_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrajectoryParameters {
  double get xCoefficient => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double xCoefficient, double yCoefficient) spiral,
    required TResult Function(double xCoefficient, double displacement)
        fallingSpiral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrajectoryParametersSpiral value) spiral,
    required TResult Function(TrajectoryParametersFallingSpiral value)
        fallingSpiral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrajectoryParametersCopyWith<TrajectoryParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrajectoryParametersCopyWith<$Res> {
  factory $TrajectoryParametersCopyWith(TrajectoryParameters value,
          $Res Function(TrajectoryParameters) then) =
      _$TrajectoryParametersCopyWithImpl<$Res>;
  $Res call({double xCoefficient});
}

/// @nodoc
class _$TrajectoryParametersCopyWithImpl<$Res>
    implements $TrajectoryParametersCopyWith<$Res> {
  _$TrajectoryParametersCopyWithImpl(this._value, this._then);

  final TrajectoryParameters _value;
  // ignore: unused_field
  final $Res Function(TrajectoryParameters) _then;

  @override
  $Res call({
    Object? xCoefficient = freezed,
  }) {
    return _then(_value.copyWith(
      xCoefficient: xCoefficient == freezed
          ? _value.xCoefficient
          : xCoefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$TrajectoryParametersSpiralCopyWith<$Res>
    implements $TrajectoryParametersCopyWith<$Res> {
  factory _$$TrajectoryParametersSpiralCopyWith(
          _$TrajectoryParametersSpiral value,
          $Res Function(_$TrajectoryParametersSpiral) then) =
      __$$TrajectoryParametersSpiralCopyWithImpl<$Res>;
  @override
  $Res call({double xCoefficient, double yCoefficient});
}

/// @nodoc
class __$$TrajectoryParametersSpiralCopyWithImpl<$Res>
    extends _$TrajectoryParametersCopyWithImpl<$Res>
    implements _$$TrajectoryParametersSpiralCopyWith<$Res> {
  __$$TrajectoryParametersSpiralCopyWithImpl(
      _$TrajectoryParametersSpiral _value,
      $Res Function(_$TrajectoryParametersSpiral) _then)
      : super(_value, (v) => _then(v as _$TrajectoryParametersSpiral));

  @override
  _$TrajectoryParametersSpiral get _value =>
      super._value as _$TrajectoryParametersSpiral;

  @override
  $Res call({
    Object? xCoefficient = freezed,
    Object? yCoefficient = freezed,
  }) {
    return _then(_$TrajectoryParametersSpiral(
      xCoefficient: xCoefficient == freezed
          ? _value.xCoefficient
          : xCoefficient // ignore: cast_nullable_to_non_nullable
              as double,
      yCoefficient: yCoefficient == freezed
          ? _value.yCoefficient
          : yCoefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TrajectoryParametersSpiral implements TrajectoryParametersSpiral {
  _$TrajectoryParametersSpiral(
      {required this.xCoefficient, required this.yCoefficient});

  @override
  final double xCoefficient;
  @override
  final double yCoefficient;

  @override
  String toString() {
    return 'TrajectoryParameters.spiral(xCoefficient: $xCoefficient, yCoefficient: $yCoefficient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrajectoryParametersSpiral &&
            const DeepCollectionEquality()
                .equals(other.xCoefficient, xCoefficient) &&
            const DeepCollectionEquality()
                .equals(other.yCoefficient, yCoefficient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(xCoefficient),
      const DeepCollectionEquality().hash(yCoefficient));

  @JsonKey(ignore: true)
  @override
  _$$TrajectoryParametersSpiralCopyWith<_$TrajectoryParametersSpiral>
      get copyWith => __$$TrajectoryParametersSpiralCopyWithImpl<
          _$TrajectoryParametersSpiral>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double xCoefficient, double yCoefficient) spiral,
    required TResult Function(double xCoefficient, double displacement)
        fallingSpiral,
  }) {
    return spiral(xCoefficient, yCoefficient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
  }) {
    return spiral?.call(xCoefficient, yCoefficient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
    required TResult orElse(),
  }) {
    if (spiral != null) {
      return spiral(xCoefficient, yCoefficient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrajectoryParametersSpiral value) spiral,
    required TResult Function(TrajectoryParametersFallingSpiral value)
        fallingSpiral,
  }) {
    return spiral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
  }) {
    return spiral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
    required TResult orElse(),
  }) {
    if (spiral != null) {
      return spiral(this);
    }
    return orElse();
  }
}

abstract class TrajectoryParametersSpiral implements TrajectoryParameters {
  factory TrajectoryParametersSpiral(
      {required final double xCoefficient,
      required final double yCoefficient}) = _$TrajectoryParametersSpiral;

  @override
  double get xCoefficient;
  double get yCoefficient;
  @override
  @JsonKey(ignore: true)
  _$$TrajectoryParametersSpiralCopyWith<_$TrajectoryParametersSpiral>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrajectoryParametersFallingSpiralCopyWith<$Res>
    implements $TrajectoryParametersCopyWith<$Res> {
  factory _$$TrajectoryParametersFallingSpiralCopyWith(
          _$TrajectoryParametersFallingSpiral value,
          $Res Function(_$TrajectoryParametersFallingSpiral) then) =
      __$$TrajectoryParametersFallingSpiralCopyWithImpl<$Res>;
  @override
  $Res call({double xCoefficient, double displacement});
}

/// @nodoc
class __$$TrajectoryParametersFallingSpiralCopyWithImpl<$Res>
    extends _$TrajectoryParametersCopyWithImpl<$Res>
    implements _$$TrajectoryParametersFallingSpiralCopyWith<$Res> {
  __$$TrajectoryParametersFallingSpiralCopyWithImpl(
      _$TrajectoryParametersFallingSpiral _value,
      $Res Function(_$TrajectoryParametersFallingSpiral) _then)
      : super(_value, (v) => _then(v as _$TrajectoryParametersFallingSpiral));

  @override
  _$TrajectoryParametersFallingSpiral get _value =>
      super._value as _$TrajectoryParametersFallingSpiral;

  @override
  $Res call({
    Object? xCoefficient = freezed,
    Object? displacement = freezed,
  }) {
    return _then(_$TrajectoryParametersFallingSpiral(
      xCoefficient: xCoefficient == freezed
          ? _value.xCoefficient
          : xCoefficient // ignore: cast_nullable_to_non_nullable
              as double,
      displacement: displacement == freezed
          ? _value.displacement
          : displacement // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TrajectoryParametersFallingSpiral
    implements TrajectoryParametersFallingSpiral {
  _$TrajectoryParametersFallingSpiral(
      {required this.xCoefficient, this.displacement = 0});

  @override
  final double xCoefficient;
  @override
  @JsonKey()
  final double displacement;

  @override
  String toString() {
    return 'TrajectoryParameters.fallingSpiral(xCoefficient: $xCoefficient, displacement: $displacement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrajectoryParametersFallingSpiral &&
            const DeepCollectionEquality()
                .equals(other.xCoefficient, xCoefficient) &&
            const DeepCollectionEquality()
                .equals(other.displacement, displacement));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(xCoefficient),
      const DeepCollectionEquality().hash(displacement));

  @JsonKey(ignore: true)
  @override
  _$$TrajectoryParametersFallingSpiralCopyWith<
          _$TrajectoryParametersFallingSpiral>
      get copyWith => __$$TrajectoryParametersFallingSpiralCopyWithImpl<
          _$TrajectoryParametersFallingSpiral>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double xCoefficient, double yCoefficient) spiral,
    required TResult Function(double xCoefficient, double displacement)
        fallingSpiral,
  }) {
    return fallingSpiral(xCoefficient, displacement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
  }) {
    return fallingSpiral?.call(xCoefficient, displacement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double xCoefficient, double yCoefficient)? spiral,
    TResult Function(double xCoefficient, double displacement)? fallingSpiral,
    required TResult orElse(),
  }) {
    if (fallingSpiral != null) {
      return fallingSpiral(xCoefficient, displacement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrajectoryParametersSpiral value) spiral,
    required TResult Function(TrajectoryParametersFallingSpiral value)
        fallingSpiral,
  }) {
    return fallingSpiral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
  }) {
    return fallingSpiral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrajectoryParametersSpiral value)? spiral,
    TResult Function(TrajectoryParametersFallingSpiral value)? fallingSpiral,
    required TResult orElse(),
  }) {
    if (fallingSpiral != null) {
      return fallingSpiral(this);
    }
    return orElse();
  }
}

abstract class TrajectoryParametersFallingSpiral
    implements TrajectoryParameters {
  factory TrajectoryParametersFallingSpiral(
      {required final double xCoefficient,
      final double displacement}) = _$TrajectoryParametersFallingSpiral;

  @override
  double get xCoefficient;
  double get displacement;
  @override
  @JsonKey(ignore: true)
  _$$TrajectoryParametersFallingSpiralCopyWith<
          _$TrajectoryParametersFallingSpiral>
      get copyWith => throw _privateConstructorUsedError;
}
