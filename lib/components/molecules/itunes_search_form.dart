// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';

@immutable
class ItunesSearchAddForm extends HookWidget {
  const ItunesSearchAddForm(
      {required this.onChangedTerm,
      required this.onChangedMedia,
      required this.onPressedSearch});

  final void Function(String) onChangedTerm;
  final void Function(String) onChangedMedia;
  final void Function() onPressedSearch;

  @override
  Widget build(BuildContext context) {
    final isInitialized = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final termTextEditingController = useTextEditingController(text: '');
    final media = useState('music');

    useEffect(() {
      termTextEditingController.addListener(() {
        onChangedTerm(termTextEditingController.text);
      });
      isInitialized.value = true;

      return () {};
    }, []);

    if (isInitialized.value == false) {
      return Container();
    }

    return Form(
        key: formKey,
        child: Column(children: [
          TextFormField(
              controller: termTextEditingController,
              decoration: const InputDecoration(labelText: 'Term'),
              validator: _termValidator,
              autovalidateMode: AutovalidateMode.onUserInteraction),
          DropdownButton(
              items: const [
                DropdownMenuItem(value: 'music', child: Text('music')),
                DropdownMenuItem(value: 'software', child: Text('software')),
              ],
              value: media.value,
              onChanged: (value) {
                media.value = value.toString();
                onChangedMedia(value.toString());
              }),
          TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onPressedSearch();
                }
              },
              child: const Text('SEARCH'))
        ]));
  }

  String? _termValidator(String? value) {
    if (value == null) {
      return "Term can't be blank";
    }
    if (value.isEmpty) {
      return "Term can't be blank";
    }
    return null;
  }
}
