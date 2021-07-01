import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_work_sample/components/molecules/app_search_form.dart';

class AppSearchBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    /*
    final summaryListStateNotifier =
        useProvider(summaryListStateProvider.notifier);
    final summaryListState = useProvider(summaryListStateProvider);
    */

    final term = useState('');
    final media = useState('music');

    void onChangedTerm(String value) {
      term.value = value;
    }

    void onChangedMedia(String value) {
      media.value = value;
    }

    void onPressedSearch() {
      /*
      summaryListStateNotifier.addGithubUser(name.value);
      name.value = '';
      */
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.all(20),
          child: AppSearchAddForm(
              onChangedTerm: onChangedTerm,
              onChangedMedia: onChangedMedia,
              onPressedSearch: onPressedSearch)),
      Expanded(child: ListView(children: []))
    ]);
  }
}
