import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@immutable
class AppSearchAddForm extends HookWidget {
  const AppSearchAddForm(
      {required this.onChangedTerm,
      required this.onChangedMedia,
      required this.onPressedSearch});

  final void Function(String) onChangedTerm;
  final void Function(String) onChangedMedia;
  final void Function() onPressedSearch;

  @override
  Widget build(BuildContext context) {
    final isInitialized = useState(false);
    final termTextEditingController = useTextEditingController(text: '');

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

    return Column(children: [
      TextFormField(
          controller: termTextEditingController,
          decoration: const InputDecoration(labelText: 'Term'),
          validator: _termValidator),
      DropdownButton(
          items: const [
            DropdownMenuItem(value: 'music', child: Text('music')),
            DropdownMenuItem(value: 'software', child: Text('software')),
          ],
          value: 'music',
          onChanged: (value) {
            onChangedMedia(value.toString());
          }),
      TextButton(
          onPressed:
              termTextEditingController.text == '' ? null : onPressedSearch,
          child: const Text('SEARCH'))
    ]);
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
