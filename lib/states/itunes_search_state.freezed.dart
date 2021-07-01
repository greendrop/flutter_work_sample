// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'itunes_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItunesSearchStateTearOff {
  const _$ItunesSearchStateTearOff();

  _ItunesSearchState call(
      {List<ItunesResult> itunesResults = const <ItunesResult>[]}) {
    return _ItunesSearchState(
      itunesResults: itunesResults,
    );
  }
}

/// @nodoc
const $ItunesSearchState = _$ItunesSearchStateTearOff();

/// @nodoc
mixin _$ItunesSearchState {
  List<ItunesResult> get itunesResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItunesSearchStateCopyWith<ItunesSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesSearchStateCopyWith<$Res> {
  factory $ItunesSearchStateCopyWith(
          ItunesSearchState value, $Res Function(ItunesSearchState) then) =
      _$ItunesSearchStateCopyWithImpl<$Res>;
  $Res call({List<ItunesResult> itunesResults});
}

/// @nodoc
class _$ItunesSearchStateCopyWithImpl<$Res>
    implements $ItunesSearchStateCopyWith<$Res> {
  _$ItunesSearchStateCopyWithImpl(this._value, this._then);

  final ItunesSearchState _value;
  // ignore: unused_field
  final $Res Function(ItunesSearchState) _then;

  @override
  $Res call({
    Object? itunesResults = freezed,
  }) {
    return _then(_value.copyWith(
      itunesResults: itunesResults == freezed
          ? _value.itunesResults
          : itunesResults // ignore: cast_nullable_to_non_nullable
              as List<ItunesResult>,
    ));
  }
}

/// @nodoc
abstract class _$ItunesSearchStateCopyWith<$Res>
    implements $ItunesSearchStateCopyWith<$Res> {
  factory _$ItunesSearchStateCopyWith(
          _ItunesSearchState value, $Res Function(_ItunesSearchState) then) =
      __$ItunesSearchStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ItunesResult> itunesResults});
}

/// @nodoc
class __$ItunesSearchStateCopyWithImpl<$Res>
    extends _$ItunesSearchStateCopyWithImpl<$Res>
    implements _$ItunesSearchStateCopyWith<$Res> {
  __$ItunesSearchStateCopyWithImpl(
      _ItunesSearchState _value, $Res Function(_ItunesSearchState) _then)
      : super(_value, (v) => _then(v as _ItunesSearchState));

  @override
  _ItunesSearchState get _value => super._value as _ItunesSearchState;

  @override
  $Res call({
    Object? itunesResults = freezed,
  }) {
    return _then(_ItunesSearchState(
      itunesResults: itunesResults == freezed
          ? _value.itunesResults
          : itunesResults // ignore: cast_nullable_to_non_nullable
              as List<ItunesResult>,
    ));
  }
}

/// @nodoc

class _$_ItunesSearchState extends _ItunesSearchState {
  _$_ItunesSearchState({this.itunesResults = const <ItunesResult>[]})
      : super._();

  @JsonKey(defaultValue: const <ItunesResult>[])
  @override
  final List<ItunesResult> itunesResults;

  @override
  String toString() {
    return 'ItunesSearchState(itunesResults: $itunesResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItunesSearchState &&
            (identical(other.itunesResults, itunesResults) ||
                const DeepCollectionEquality()
                    .equals(other.itunesResults, itunesResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itunesResults);

  @JsonKey(ignore: true)
  @override
  _$ItunesSearchStateCopyWith<_ItunesSearchState> get copyWith =>
      __$ItunesSearchStateCopyWithImpl<_ItunesSearchState>(this, _$identity);
}

abstract class _ItunesSearchState extends ItunesSearchState {
  factory _ItunesSearchState({List<ItunesResult> itunesResults}) =
      _$_ItunesSearchState;
  _ItunesSearchState._() : super._();

  @override
  List<ItunesResult> get itunesResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItunesSearchStateCopyWith<_ItunesSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
