// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edu_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EduLesson {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get theoryProgress => throw _privateConstructorUsedError;
  int get gameProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EduLessonCopyWith<EduLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EduLessonCopyWith<$Res> {
  factory $EduLessonCopyWith(EduLesson value, $Res Function(EduLesson) then) =
      _$EduLessonCopyWithImpl<$Res, EduLesson>;
  @useResult
  $Res call({int id, String title, int theoryProgress, int gameProgress});
}

/// @nodoc
class _$EduLessonCopyWithImpl<$Res, $Val extends EduLesson>
    implements $EduLessonCopyWith<$Res> {
  _$EduLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? theoryProgress = null,
    Object? gameProgress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      theoryProgress: null == theoryProgress
          ? _value.theoryProgress
          : theoryProgress // ignore: cast_nullable_to_non_nullable
              as int,
      gameProgress: null == gameProgress
          ? _value.gameProgress
          : gameProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EduLessonCopyWith<$Res> implements $EduLessonCopyWith<$Res> {
  factory _$$_EduLessonCopyWith(
          _$_EduLesson value, $Res Function(_$_EduLesson) then) =
      __$$_EduLessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, int theoryProgress, int gameProgress});
}

/// @nodoc
class __$$_EduLessonCopyWithImpl<$Res>
    extends _$EduLessonCopyWithImpl<$Res, _$_EduLesson>
    implements _$$_EduLessonCopyWith<$Res> {
  __$$_EduLessonCopyWithImpl(
      _$_EduLesson _value, $Res Function(_$_EduLesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? theoryProgress = null,
    Object? gameProgress = null,
  }) {
    return _then(_$_EduLesson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      theoryProgress: null == theoryProgress
          ? _value.theoryProgress
          : theoryProgress // ignore: cast_nullable_to_non_nullable
              as int,
      gameProgress: null == gameProgress
          ? _value.gameProgress
          : gameProgress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EduLesson implements _EduLesson {
  const _$_EduLesson(
      {required this.id,
      required this.title,
      required this.theoryProgress,
      required this.gameProgress});

  @override
  final int id;
  @override
  final String title;
  @override
  final int theoryProgress;
  @override
  final int gameProgress;

  @override
  String toString() {
    return 'EduLesson(id: $id, title: $title, theoryProgress: $theoryProgress, gameProgress: $gameProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EduLesson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.theoryProgress, theoryProgress) ||
                other.theoryProgress == theoryProgress) &&
            (identical(other.gameProgress, gameProgress) ||
                other.gameProgress == gameProgress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, theoryProgress, gameProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EduLessonCopyWith<_$_EduLesson> get copyWith =>
      __$$_EduLessonCopyWithImpl<_$_EduLesson>(this, _$identity);
}

abstract class _EduLesson implements EduLesson {
  const factory _EduLesson(
      {required final int id,
      required final String title,
      required final int theoryProgress,
      required final int gameProgress}) = _$_EduLesson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get theoryProgress;
  @override
  int get gameProgress;
  @override
  @JsonKey(ignore: true)
  _$$_EduLessonCopyWith<_$_EduLesson> get copyWith =>
      throw _privateConstructorUsedError;
}
