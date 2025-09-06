import 'package:go_router/go_router.dart';
import 'package:grabber_app/screens/home/home_screen.dart';
import 'package:grabber_app/screens/splash/splash.dart';

abstract class AppRouter {
  static const String kHome = '/home';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Splash()),
      GoRoute(path: kHome, builder: (context, state) => HomeScreen()),
    ],
  );
}
