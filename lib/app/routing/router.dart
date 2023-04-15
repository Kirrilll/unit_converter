import 'package:converter/pages/categories_list_page.dart';
import 'package:converter/pages/covert_page.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (_, __) => const CategoriesListPage()
      ),
      GoRoute(
          path: '/category/:categoryId',
          builder: (_, state) => ConvertPage(categoryId: int.tryParse(state.params['categoryId'] ?? '') ?? 0),

      )
    ]
);