import 'dart:async';
import 'package:flame/game.dart';
import 'package:pixel_slayer/components/player_component.dart';

class PixelSlayerGame extends FlameGame {
  late PlayerComponent player;

  @override
  Future<void> onLoad() async {
    player = PlayerComponent();
    await add(player);
    return super.onLoad();
  }
}
