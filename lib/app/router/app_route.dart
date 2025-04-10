enum AppRoute { start, main }

extension AppRouteExtension on AppRoute {
  String get toPath => '/$name';
}
