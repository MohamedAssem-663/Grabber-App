import 'package:go_router/go_router.dart';
import 'package:grabber_app/models/category_models.dart';
import 'package:grabber_app/models/items_model.dart';
import 'package:grabber_app/models/product_model.dart';
import 'package:grabber_app/screens/home/home_screen.dart';
import 'package:grabber_app/screens/splash/splash.dart';

abstract class AppRouter {
  static const String kHome = '/home';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Splash()),
      GoRoute(
        path: kHome,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;

          final products = extra?['products'] as List<ProductModel>? ?? [];
          final items = extra?['items'] as List<ItemsModel>? ?? [];
          final category = extra?['category'] as List<CategoryModel>? ?? [];

          return HomeScreen(product: products, item: items, category: category);
        },
      ),
    ],
  );
}
