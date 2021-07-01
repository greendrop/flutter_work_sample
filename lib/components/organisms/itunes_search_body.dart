import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_work_sample/components/molecules/itunes_search_form.dart';
import 'package:flutter_work_sample/components/molecules/itunes_search_list_item.dart';
import 'package:flutter_work_sample/states/state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ItunesSearchBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final itunesSearchStateNotifier =
        useProvider(itunesSearchStateProvider.notifier);
    final itunesSearchState = useProvider(itunesSearchStateProvider);

    final term = useState('');
    final media = useState('music');

    void onChangedTerm(String value) {
      term.value = value;
    }

    void onChangedMedia(String value) {
      media.value = value;
    }

    void onPressedSearch() {
      itunesSearchStateNotifier.search(term: term.value, media: media.value);
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.all(20),
          child: ItunesSearchAddForm(
              onChangedTerm: onChangedTerm,
              onChangedMedia: onChangedMedia,
              onPressedSearch: onPressedSearch)),
      itunesSearchState.itunesResults.isNotEmpty
          ? Expanded(
              child: ListView(children: [
              ...itunesSearchState.itunesResults
                  .map((item) => ItunesSearchListItem(itunesResult: item))
            ]))
          : Expanded(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('検索結果がありません')])
            ]))
    ]);
  }
}
