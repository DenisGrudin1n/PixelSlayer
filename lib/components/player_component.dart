import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:pixel_slayer/constants/player_constants.dart';
import 'package:pixel_slayer/games/pixel_slayer_game.dart';

class PlayerComponent extends SpriteAnimationComponent
    with HasGameRef<PixelSlayerGame> {
  PlayerComponent();

  @override
  Future<void> onLoad() async {
    // Uploading sprite sheet
    SpriteSheet spriteSheet = SpriteSheet(
      image: await gameRef.images.load(PlayerConstants.playerAssetName),
      srcSize: Vector2(
        PlayerConstants.playerSpriteWidth,
        PlayerConstants.playerSpriteHeight,
      ),
    );

    // Creating a player running animations as initial
    animation = spriteSheet.createAnimation(
      row: PlayerConstants.playerSpriteSheetData['row']!.toInt(),
      stepTime: PlayerConstants.playerSpriteSheetData['stepTime']!.toDouble(),
      from: PlayerConstants.playerSpriteSheetData['from']!.toInt(),
      to: PlayerConstants.playerSpriteSheetData['to']!.toInt(),
    );

    // Initializing player size && staring position on the screen
    size = Vector2(
      PlayerConstants.playerWidth,
      PlayerConstants.playerHeight,
    );
    position = Vector2(
      gameRef.size.x * PlayerConstants.playerInitialPositionX,
      gameRef.size.y * PlayerConstants.playerInitialPositionY,
    );
    anchor = Anchor.center;
  }
}
