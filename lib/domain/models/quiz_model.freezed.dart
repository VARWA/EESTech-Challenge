// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Quiz {
  String get id => throw _privateConstructorUsedError;
  String get stringQuestion => throw _privateConstructorUsedError;
  String? get imageQuestion => throw _privateConstructorUsedError;
  List<QuizItem> get quizItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String id,
      String stringQuestion,
      String? imageQuestion,
      List<QuizItem> quizItems});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stringQuestion = null,
    Object? imageQuestion = freezed,
    Object? quizItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringQuestion: null == stringQuestion
          ? _value.stringQuestion
          : stringQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      imageQuestion: freezed == imageQuestion
          ? _value.imageQuestion
          : imageQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      quizItems: null == quizItems
          ? _value.quizItems
          : quizItems // ignore: cast_nullable_to_non_nullable
              as List<QuizItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizCopyWith(_$_Quiz value, $Res Function(_$_Quiz) then) =
      __$$_QuizCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String stringQuestion,
      String? imageQuestion,
      List<QuizItem> quizItems});
}

/// @nodoc
class __$$_QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res, _$_Quiz>
    implements _$$_QuizCopyWith<$Res> {
  __$$_QuizCopyWithImpl(_$_Quiz _value, $Res Function(_$_Quiz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stringQuestion = null,
    Object? imageQuestion = freezed,
    Object? quizItems = null,
  }) {
    return _then(_$_Quiz(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stringQuestion: null == stringQuestion
          ? _value.stringQuestion
          : stringQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      imageQuestion: freezed == imageQuestion
          ? _value.imageQuestion
          : imageQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      quizItems: null == quizItems
          ? _value._quizItems
          : quizItems // ignore: cast_nullable_to_non_nullable
              as List<QuizItem>,
    ));
  }
}

/// @nodoc

class _$_Quiz implements _Quiz {
  const _$_Quiz(
      {required this.id,
      required this.stringQuestion,
      this.imageQuestion,
      required final List<QuizItem> quizItems})
      : _quizItems = quizItems;

  @override
  final String id;
  @override
  final String stringQuestion;
  @override
  final String? imageQuestion;
  final List<QuizItem> _quizItems;
  @override
  List<QuizItem> get quizItems {
    if (_quizItems is EqualUnmodifiableListView) return _quizItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizItems);
  }

  @override
  String toString() {
    return 'Quiz(id: $id, stringQuestion: $stringQuestion, imageQuestion: $imageQuestion, quizItems: $quizItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quiz &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stringQuestion, stringQuestion) ||
                other.stringQuestion == stringQuestion) &&
            (identical(other.imageQuestion, imageQuestion) ||
                other.imageQuestion == imageQuestion) &&
            const DeepCollectionEquality()
                .equals(other._quizItems, _quizItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, stringQuestion,
      imageQuestion, const DeepCollectionEquality().hash(_quizItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizCopyWith<_$_Quiz> get copyWith =>
      __$$_QuizCopyWithImpl<_$_Quiz>(this, _$identity);
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {required final String id,
      required final String stringQuestion,
      final String? imageQuestion,
      required final List<QuizItem> quizItems}) = _$_Quiz;

  @override
  String get id;
  @override
  String get stringQuestion;
  @override
  String? get imageQuestion;
  @override
  List<QuizItem> get quizItems;
  @override
  @JsonKey(ignore: true)
  _$$_QuizCopyWith<_$_Quiz> get copyWith => throw _privateConstructorUsedError;
}
