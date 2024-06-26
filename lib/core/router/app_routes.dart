import 'package:go_router/go_router.dart';
import 'package:jaxon/features/home_screen/view/home_screen.dart';
import 'name_routes.dart';

class Routing {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.initial,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: Routes.initial,
        path: Routes.initial,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
