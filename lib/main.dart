// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_work_sample/app_route.dart';
import 'package:flutter_work_sample/config/app_config.dart';

void main() {
  final _ = AppConfig().load();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: AppRoot()));
}
