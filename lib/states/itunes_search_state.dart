// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_work_sample/entities/itunes_result.dart';
import 'package:flutter_work_sample/repositories/itunes_search_repository.dart';

part 'itunes_search_state.freezed.dart';

@freezed
class ItunesSearchState with _$ItunesSearchState {
  factory ItunesSearchState(
          {@Default(<ItunesResult>[]) List<ItunesResult> itunesResults}) =
      _ItunesSearchState;
  const ItunesSearchState._();
}

class ItunesSearchStateNotifier extends StateNotifier<ItunesSearchState> {
  ItunesSearchStateNotifier() : super(ItunesSearchState());

  Future<void> search({required String term, required String media}) async {
    final repository = ItunesSearchRepository();

    final itunesResults = await repository.search(term: term, media: media);
    state = state.copyWith(itunesResults: itunesResults);
  }
}
