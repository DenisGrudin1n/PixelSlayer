import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';

class PixelSlayerGame extends FlameGame {
  late SpriteAnimationComponent playerAnimationComponent;

  @override
  FutureOr<void> onLoad() async {
    await loadAnimations();
    add(playerAnimationComponent);
    return super.onLoad();
  }

  Future<void> loadAnimations() async {
    SpriteSheet playerSpriteSheet = SpriteSheet(
      image: await images.load('player.png'),
      srcSize: Vector2(50, 37),
    );

    SpriteAnimation playerSpriteAnimation = playerSpriteSheet.createAnimation(
      row: 0,
      stepTime: 0.12,
      from: 8,
      to: 13,
    );

    playerAnimationComponent = SpriteAnimationComponent(
      animation: playerSpriteAnimation,
      size: Vector2(50 * 3, 50 * 3),
      position: Vector2(size.x * 0.1, size.y * 0.65),
      anchor: Anchor.center,
    );
  }
}
