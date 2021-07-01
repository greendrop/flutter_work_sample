import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_work_sample/config/app_config.dart';
import 'package:flutter_work_sample/pages/itunes_search_page.dart';
import 'package:flutter_work_sample/pages/not_found_page.dart';
import 'package:routemaster/routemaster.dart';

class AppRoot extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig();
    if (!appConfig.displayFlavor) {
      return AppRootMain();
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
          color: Colors.red,
          message: appConfig.flavor.toUpperCase(),
          location: BannerLocation.bottomStart,
          child: AppRootMain()),
    );
  }
}

class AppRootMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'iTunes Search',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routeInformationParser: const RoutemasterParser(),
        routerDelegate: RoutemasterDelegate(
            routesBuilder: (context) => RouteMap(
                    onUnknownRoute: (_) {
                      return MaterialPage<Widget>(child: NotFoundPage());
                    },
                    routes: {
                      '/': (_) =>
                          MaterialPage<Widget>(child: ItunesSearchPage()),
                    })));
  }
}
