// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_result.freezed.dart';

@freezed
class ItunesResult with _$ItunesResult {
  factory ItunesResult(
      {@Default('') String artistName,
      @Default('') String artworkUrl60,
      @Default('') String trackName}) = _ItunesResult;
  const ItunesResult._();
}
