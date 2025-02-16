import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_slayer/core/widgets/settings_button.dart';
import 'package:pixel_slayer/core/widgets/settings_dialog.dart';
import 'package:pixel_slayer/games/pixel_slayer_game.dart';

class PixelSlayerGameScreen extends StatefulWidget {
  const PixelSlayerGameScreen({super.key});

  @override
  State<PixelSlayerGameScreen> createState() => _PixelSlayerGameScreenState();
}

class _PixelSlayerGameScreenState extends State<PixelSlayerGameScreen> {
  late PixelSlayerGame game;

  @override
  void initState() {
    super.initState();
    game = PixelSlayerGame(onOpenSettings: () => openSettingsDialog(context));
  }

  void openSettingsDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => const SettingsDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget(
            game: kDebugMode
                ? PixelSlayerGame(
                    onOpenSettings: () => openSettingsDialog(context),
                  )
                : game,
          ),
          Positioned(
            top: 20,
            right: 20,
            child: SettingsButton(
              openSettingsDialog: () => openSettingsDialog(context),
            ),
          ),
        ],
      ),
    );
  }
}
