import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pixel_slayer/core/router/app_router.dart';
import 'package:pixel_slayer/core/theme/palette.dart';

class PixelSlayerApp extends StatelessWidget {
  const PixelSlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pixel Slayer',
      routerConfig: AppRouter.router,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: Palette.primaryDark,
        primaryColorLight: Palette.primaryLight,
      ),
    );
  }
}
