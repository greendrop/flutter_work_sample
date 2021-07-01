class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  String flavor = '';
  bool displayFlavor = true;

  Future<void> load() async {
    flavor = const String.fromEnvironment('FLAVOR');
    displayFlavor = flavor != 'prod';

    switch (flavor) {
      case 'prod':
        break;
    }
  }
}
