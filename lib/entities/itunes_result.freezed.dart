// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'itunes_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItunesResultTearOff {
  const _$ItunesResultTearOff();

  _ItunesResult call(
      {String artistName = '',
      String artworkUrl60 = '',
      String trackName = ''}) {
    return _ItunesResult(
      artistName: artistName,
      artworkUrl60: artworkUrl60,
      trackName: trackName,
    );
  }
}

/// @nodoc
const $ItunesResult = _$ItunesResultTearOff();

/// @nodoc
mixin _$ItunesResult {
  String get artistName => throw _privateConstructorUsedError;
  String get artworkUrl60 => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItunesResultCopyWith<ItunesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesResultCopyWith<$Res> {
  factory $ItunesResultCopyWith(
          ItunesResult value, $Res Function(ItunesResult) then) =
      _$ItunesResultCopyWithImpl<$Res>;
  $Res call({String artistName, String artworkUrl60, String trackName});
}

/// @nodoc
class _$ItunesResultCopyWithImpl<$Res> implements $ItunesResultCopyWith<$Res> {
  _$ItunesResultCopyWithImpl(this._value, this._then);

  final ItunesResult _value;
  // ignore: unused_field
  final $Res Function(ItunesResult) _then;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl60 = freezed,
    Object? trackName = freezed,
  }) {
    return _then(_value.copyWith(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl60: artworkUrl60 == freezed
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItunesResultCopyWith<$Res>
    implements $ItunesResultCopyWith<$Res> {
  factory _$ItunesResultCopyWith(
          _ItunesResult value, $Res Function(_ItunesResult) then) =
      __$ItunesResultCopyWithImpl<$Res>;
  @override
  $Res call({String artistName, String artworkUrl60, String trackName});
}

/// @nodoc
class __$ItunesResultCopyWithImpl<$Res> extends _$ItunesResultCopyWithImpl<$Res>
    implements _$ItunesResultCopyWith<$Res> {
  __$ItunesResultCopyWithImpl(
      _ItunesResult _value, $Res Function(_ItunesResult) _then)
      : super(_value, (v) => _then(v as _ItunesResult));

  @override
  _ItunesResult get _value => super._value as _ItunesResult;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl60 = freezed,
    Object? trackName = freezed,
  }) {
    return _then(_ItunesResult(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl60: artworkUrl60 == freezed
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItunesResult extends _ItunesResult {
  _$_ItunesResult(
      {this.artistName = '', this.artworkUrl60 = '', this.trackName = ''})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String artistName;
  @JsonKey(defaultValue: '')
  @override
  final String artworkUrl60;
  @JsonKey(defaultValue: '')
  @override
  final String trackName;

  @override
  String toString() {
    return 'ItunesResult(artistName: $artistName, artworkUrl60: $artworkUrl60, trackName: $trackName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItunesResult &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality()
                    .equals(other.artistName, artistName)) &&
            (identical(other.artworkUrl60, artworkUrl60) ||
                const DeepCollectionEquality()
                    .equals(other.artworkUrl60, artworkUrl60)) &&
            (identical(other.trackName, trackName) ||
                const DeepCollectionEquality()
                    .equals(other.trackName, trackName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(artistName) ^
      const DeepCollectionEquality().hash(artworkUrl60) ^
      const DeepCollectionEquality().hash(trackName);

  @JsonKey(ignore: true)
  @override
  _$ItunesResultCopyWith<_ItunesResult> get copyWith =>
      __$ItunesResultCopyWithImpl<_ItunesResult>(this, _$identity);
}

abstract class _ItunesResult extends ItunesResult {
  factory _ItunesResult(
      {String artistName,
      String artworkUrl60,
      String trackName}) = _$_ItunesResult;
  _ItunesResult._() : super._();

  @override
  String get artistName => throw _privateConstructorUsedError;
  @override
  String get artworkUrl60 => throw _privateConstructorUsedError;
  @override
  String get trackName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItunesResultCopyWith<_ItunesResult> get copyWith =>
      throw _privateConstructorUsedError;
}
