import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_slayer/core/constants/background_constants.dart';
import 'package:pixel_slayer/games/pixel_slayer_game.dart';

class BackgroundComponent extends SpriteComponent
    with HasGameRef<PixelSlayerGame> {
  BackgroundComponent();

  @override
  Future<void> onLoad() async {
    sprite = await gameRef.loadSprite(BackgroundConstants.backgroundAssetName);
    size = gameRef.size;
  }
}
