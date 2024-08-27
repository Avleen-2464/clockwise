import 'package:clockwise/screens/splash.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (ctx, state) => const Splash(),
    ),
  ],
);
