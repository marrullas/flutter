import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: CounterScreeen.name,
    path: '/counter',
    builder: (context, state) => const CounterScreeen(),
  ),
    GoRoute(
    name: ThemeChangerScreen.name,
    path: '/theme-changer',
    builder: (context, state) => const ThemeChangerScreen(),
  ),
  GoRoute(
    name: ButtonsScreen.name,
    path: '/buttons',
    builder: (context, state) => const ButtonsScreen(),
  ),
  GoRoute(
    name: CardsScreen.name,
    path: '/cards',
    builder: (context, state) => const CardsScreen(),
  ),
    GoRoute(
    name: ProgressScreen.name,
    path: '/progress',
    builder: (context, state) => const ProgressScreen(),
  ),
  GoRoute(
    name: SnackbarScreen.name,
    path: '/snackbar',
    builder: (context, state) => const SnackbarScreen(),
  ),
  GoRoute(
    name: AnimatedScreen.name,
    path: '/animated',
    builder: (context, state) => const AnimatedScreen(),
  ),

  GoRoute(
    name: UiControlsScreen.name,
    path: '/ui-controls',
    builder: (context, state) => const UiControlsScreen(),
  ),


  GoRoute(
    name: AppTutorialScreen.name,
    path: '/tutorial',
    builder: (context, state) => const AppTutorialScreen(),
  ),

    GoRoute(
    name: InfiniteScrollScreen.name,
    path: '/infinite-scroll',
    builder: (context, state) => const InfiniteScrollScreen(),
  ),
]);
