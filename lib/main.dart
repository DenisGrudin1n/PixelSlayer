import 'package:easy_localization/easy_localization.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:pixel_slayer/apps/pixel_slayer_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('uk')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const PixelSlayerApp(),
    ),
  );
}
