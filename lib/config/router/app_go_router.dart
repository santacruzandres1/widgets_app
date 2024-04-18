import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';


// GoRouter configuration
final goAppRouter = GoRouter(
  initialLocation:
      '/', // Esto es para definir en que pantalla inicia podria ser una landing o un Loguin
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
      GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/settings',
      name: SettingsScreen.name,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
