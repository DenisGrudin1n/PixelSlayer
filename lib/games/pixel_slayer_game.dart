import 'dart:async';
import 'package:flame/game.dart';
import 'package:pixel_slayer/components/background_component.dart';
import 'package:pixel_slayer/components/player_component.dart';

class PixelSlayerGame extends FlameGame {
  late BackgroundComponent background;
  late PlayerComponent player;

  @override
  Future<void> onLoad() async {
    background = BackgroundComponent();
    player = PlayerComponent();
    await add(background);
    await add(player);
    return super.onLoad();
  }
}
