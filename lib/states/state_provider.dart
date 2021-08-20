// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_work_sample/states/itunes_search_state.dart';

final itunesSearchStateProvider =
    StateNotifierProvider<ItunesSearchStateNotifier, ItunesSearchState>(
        (_) => ItunesSearchStateNotifier());
