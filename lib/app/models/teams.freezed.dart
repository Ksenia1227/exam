// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return _Teams.fromJson(json);
}

/// @nodoc
mixin _$Teams {
  String get nameTeam => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get moreScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamsCopyWith<Teams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsCopyWith<$Res> {
  factory $TeamsCopyWith(Teams value, $Res Function(Teams) then) =
      _$TeamsCopyWithImpl<$Res, Teams>;
  @useResult
  $Res call({String nameTeam, int score, int moreScore});
}

/// @nodoc
class _$TeamsCopyWithImpl<$Res, $Val extends Teams>
    implements $TeamsCopyWith<$Res> {
  _$TeamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameTeam = null,
    Object? score = null,
    Object? moreScore = null,
  }) {
    return _then(_value.copyWith(
      nameTeam: null == nameTeam
          ? _value.nameTeam
          : nameTeam // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      moreScore: null == moreScore
          ? _value.moreScore
          : moreScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamsImplCopyWith<$Res> implements $TeamsCopyWith<$Res> {
  factory _$$TeamsImplCopyWith(
          _$TeamsImpl value, $Res Function(_$TeamsImpl) then) =
      __$$TeamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nameTeam, int score, int moreScore});
}

/// @nodoc
class __$$TeamsImplCopyWithImpl<$Res>
    extends _$TeamsCopyWithImpl<$Res, _$TeamsImpl>
    implements _$$TeamsImplCopyWith<$Res> {
  __$$TeamsImplCopyWithImpl(
      _$TeamsImpl _value, $Res Function(_$TeamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameTeam = null,
    Object? score = null,
    Object? moreScore = null,
  }) {
    return _then(_$TeamsImpl(
      nameTeam: null == nameTeam
          ? _value.nameTeam
          : nameTeam // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      moreScore: null == moreScore
          ? _value.moreScore
          : moreScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamsImpl implements _Teams {
  _$TeamsImpl({required this.nameTeam, this.score = 0, this.moreScore = 0});

  factory _$TeamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamsImplFromJson(json);

  @override
  final String nameTeam;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int moreScore;

  @override
  String toString() {
    return 'Teams(nameTeam: $nameTeam, score: $score, moreScore: $moreScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamsImpl &&
            (identical(other.nameTeam, nameTeam) ||
                other.nameTeam == nameTeam) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.moreScore, moreScore) ||
                other.moreScore == moreScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameTeam, score, moreScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamsImplCopyWith<_$TeamsImpl> get copyWith =>
      __$$TeamsImplCopyWithImpl<_$TeamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamsImplToJson(
      this,
    );
  }
}

abstract class _Teams implements Teams {
  factory _Teams(
      {required final String nameTeam,
      final int score,
      final int moreScore}) = _$TeamsImpl;

  factory _Teams.fromJson(Map<String, dynamic> json) = _$TeamsImpl.fromJson;

  @override
  String get nameTeam;
  @override
  int get score;
  @override
  int get moreScore;
  @override
  @JsonKey(ignore: true)
  _$$TeamsImplCopyWith<_$TeamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
