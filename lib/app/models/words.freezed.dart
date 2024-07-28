// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'words.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Words _$WordsFromJson(Map<String, dynamic> json) {
  return _Words.fromJson(json);
}

/// @nodoc
mixin _$Words {
  String get word => throw _privateConstructorUsedError;
  bool get correct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordsCopyWith<Words> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsCopyWith<$Res> {
  factory $WordsCopyWith(Words value, $Res Function(Words) then) =
      _$WordsCopyWithImpl<$Res, Words>;
  @useResult
  $Res call({String word, bool correct});
}

/// @nodoc
class _$WordsCopyWithImpl<$Res, $Val extends Words>
    implements $WordsCopyWith<$Res> {
  _$WordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? correct = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordsImplCopyWith<$Res> implements $WordsCopyWith<$Res> {
  factory _$$WordsImplCopyWith(
          _$WordsImpl value, $Res Function(_$WordsImpl) then) =
      __$$WordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, bool correct});
}

/// @nodoc
class __$$WordsImplCopyWithImpl<$Res>
    extends _$WordsCopyWithImpl<$Res, _$WordsImpl>
    implements _$$WordsImplCopyWith<$Res> {
  __$$WordsImplCopyWithImpl(
      _$WordsImpl _value, $Res Function(_$WordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? correct = null,
  }) {
    return _then(_$WordsImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordsImpl implements _Words {
  _$WordsImpl({required this.word, required this.correct});

  factory _$WordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordsImplFromJson(json);

  @override
  final String word;
  @override
  final bool correct;

  @override
  String toString() {
    return 'Words(word: $word, correct: $correct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, correct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsImplCopyWith<_$WordsImpl> get copyWith =>
      __$$WordsImplCopyWithImpl<_$WordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordsImplToJson(
      this,
    );
  }
}

abstract class _Words implements Words {
  factory _Words({required final String word, required final bool correct}) =
      _$WordsImpl;

  factory _Words.fromJson(Map<String, dynamic> json) = _$WordsImpl.fromJson;

  @override
  String get word;
  @override
  bool get correct;
  @override
  @JsonKey(ignore: true)
  _$$WordsImplCopyWith<_$WordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
