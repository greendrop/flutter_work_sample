import 'package:flutter/material.dart';
import 'package:flutter_work_sample/app_route.dart';
import 'package:flutter_work_sample/config/app_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final _ = AppConfig().load();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: AppRoot()));
}
