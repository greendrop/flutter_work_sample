import 'package:flutter_work_sample/states/itunes_search_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itunesSearchStateProvider =
    StateNotifierProvider<ItunesSearchStateNotifier, ItunesSearchState>(
        (_) => ItunesSearchStateNotifier());
