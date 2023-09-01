// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theory_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TheoryArticle {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get videoDescription => throw _privateConstructorUsedError;
  String? get mainText => throw _privateConstructorUsedError;
  List<String>? get otherResources => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TheoryArticleCopyWith<TheoryArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheoryArticleCopyWith<$Res> {
  factory $TheoryArticleCopyWith(
          TheoryArticle value, $Res Function(TheoryArticle) then) =
      _$TheoryArticleCopyWithImpl<$Res, TheoryArticle>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? videoUrl,
      String? videoDescription,
      String? mainText,
      List<String>? otherResources});
}

/// @nodoc
class _$TheoryArticleCopyWithImpl<$Res, $Val extends TheoryArticle>
    implements $TheoryArticleCopyWith<$Res> {
  _$TheoryArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? videoUrl = freezed,
    Object? videoDescription = freezed,
    Object? mainText = freezed,
    Object? otherResources = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDescription: freezed == videoDescription
          ? _value.videoDescription
          : videoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      otherResources: freezed == otherResources
          ? _value.otherResources
          : otherResources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TheoryArticleCopyWith<$Res>
    implements $TheoryArticleCopyWith<$Res> {
  factory _$$_TheoryArticleCopyWith(
          _$_TheoryArticle value, $Res Function(_$_TheoryArticle) then) =
      __$$_TheoryArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? videoUrl,
      String? videoDescription,
      String? mainText,
      List<String>? otherResources});
}

/// @nodoc
class __$$_TheoryArticleCopyWithImpl<$Res>
    extends _$TheoryArticleCopyWithImpl<$Res, _$_TheoryArticle>
    implements _$$_TheoryArticleCopyWith<$Res> {
  __$$_TheoryArticleCopyWithImpl(
      _$_TheoryArticle _value, $Res Function(_$_TheoryArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? videoUrl = freezed,
    Object? videoDescription = freezed,
    Object? mainText = freezed,
    Object? otherResources = freezed,
  }) {
    return _then(_$_TheoryArticle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoDescription: freezed == videoDescription
          ? _value.videoDescription
          : videoDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mainText: freezed == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      otherResources: freezed == otherResources
          ? _value._otherResources
          : otherResources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_TheoryArticle implements _TheoryArticle {
  const _$_TheoryArticle(
      {required this.id,
      required this.name,
      this.videoUrl,
      this.videoDescription,
      this.mainText,
      final List<String>? otherResources})
      : _otherResources = otherResources;

  @override
  final int id;
  @override
  final String name;
  @override
  final String? videoUrl;
  @override
  final String? videoDescription;
  @override
  final String? mainText;
  final List<String>? _otherResources;
  @override
  List<String>? get otherResources {
    final value = _otherResources;
    if (value == null) return null;
    if (_otherResources is EqualUnmodifiableListView) return _otherResources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TheoryArticle(id: $id, name: $name, videoUrl: $videoUrl, videoDescription: $videoDescription, mainText: $mainText, otherResources: $otherResources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TheoryArticle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.videoDescription, videoDescription) ||
                other.videoDescription == videoDescription) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            const DeepCollectionEquality()
                .equals(other._otherResources, _otherResources));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      videoUrl,
      videoDescription,
      mainText,
      const DeepCollectionEquality().hash(_otherResources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TheoryArticleCopyWith<_$_TheoryArticle> get copyWith =>
      __$$_TheoryArticleCopyWithImpl<_$_TheoryArticle>(this, _$identity);
}

abstract class _TheoryArticle implements TheoryArticle {
  const factory _TheoryArticle(
      {required final int id,
      required final String name,
      final String? videoUrl,
      final String? videoDescription,
      final String? mainText,
      final List<String>? otherResources}) = _$_TheoryArticle;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get videoUrl;
  @override
  String? get videoDescription;
  @override
  String? get mainText;
  @override
  List<String>? get otherResources;
  @override
  @JsonKey(ignore: true)
  _$$_TheoryArticleCopyWith<_$_TheoryArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
