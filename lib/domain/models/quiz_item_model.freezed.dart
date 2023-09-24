// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizItem {
  String get text => throw _privateConstructorUsedError;
  bool get isAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizItemCopyWith<QuizItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizItemCopyWith<$Res> {
  factory $QuizItemCopyWith(QuizItem value, $Res Function(QuizItem) then) =
      _$QuizItemCopyWithImpl<$Res, QuizItem>;
  @useResult
  $Res call({String text, bool isAnswer});
}

/// @nodoc
class _$QuizItemCopyWithImpl<$Res, $Val extends QuizItem>
    implements $QuizItemCopyWith<$Res> {
  _$QuizItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isAnswer = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizItemCopyWith<$Res> implements $QuizItemCopyWith<$Res> {
  factory _$$_QuizItemCopyWith(
          _$_QuizItem value, $Res Function(_$_QuizItem) then) =
      __$$_QuizItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, bool isAnswer});
}

/// @nodoc
class __$$_QuizItemCopyWithImpl<$Res>
    extends _$QuizItemCopyWithImpl<$Res, _$_QuizItem>
    implements _$$_QuizItemCopyWith<$Res> {
  __$$_QuizItemCopyWithImpl(
      _$_QuizItem _value, $Res Function(_$_QuizItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isAnswer = null,
  }) {
    return _then(_$_QuizItem(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QuizItem implements _QuizItem {
  const _$_QuizItem({required this.text, required this.isAnswer});

  @override
  final String text;
  @override
  final bool isAnswer;

  @override
  String toString() {
    return 'QuizItem(text: $text, isAnswer: $isAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizItem &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, isAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizItemCopyWith<_$_QuizItem> get copyWith =>
      __$$_QuizItemCopyWithImpl<_$_QuizItem>(this, _$identity);
}

abstract class _QuizItem implements QuizItem {
  const factory _QuizItem(
      {required final String text, required final bool isAnswer}) = _$_QuizItem;

  @override
  String get text;
  @override
  bool get isAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuizItemCopyWith<_$_QuizItem> get copyWith =>
      throw _privateConstructorUsedError;
}
