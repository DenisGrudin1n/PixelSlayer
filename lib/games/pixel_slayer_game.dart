import 'dart:async';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_slayer/components/background_component.dart';
import 'package:pixel_slayer/components/keyboard_handler_component.dart';
import 'package:pixel_slayer/components/player_component.dart';

class PixelSlayerGame extends FlameGame with KeyboardEvents {
  PixelSlayerGame({required this.onOpenSettings});
  late BackgroundComponent background;
  late PlayerComponent player;

  final VoidCallback onOpenSettings;

  @override
  Future<void> onLoad() async {
    background = BackgroundComponent();
    player = PlayerComponent();

    await add(background);
    await add(player);
    await add(KeyboardHandlerComponent(onOpenSettings: onOpenSettings));

    return super.onLoad();
  }
}
