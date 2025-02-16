import 'package:go_router/go_router.dart';
import 'package:pixel_slayer/screens/pixel_slayer_game_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      // Default route for the game
      GoRoute(
        path: '/',
        builder: (context, state) => const PixelSlayerGameScreen(),
      ),
    ],
  );
}
