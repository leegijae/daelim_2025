import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/main/main_screen.dart';
import 'package:daelim_2025/presentation/start/start_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/start',
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      builder: (context, state) => StartScreen(),
    ),
    GoRoute(
      path: AppRoute.main.toPath,
      builder: (context, state) => MainScreen(),
    ),
  ],
);
