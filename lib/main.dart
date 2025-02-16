import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_slayer/games/pixel_slayer_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  PixelSlayerGame game = PixelSlayerGame();
  runApp(GameWidget(game: kDebugMode ? PixelSlayerGame() : game));
}
