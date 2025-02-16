import 'package:flame/components.dart';
import 'package:flutter/services.dart';

class KeyboardHandlerComponent extends Component with KeyboardHandler {
  KeyboardHandlerComponent({required this.onOpenSettings});
  final VoidCallback onOpenSettings;

  // Open/Close settings dialog when pressing esc button
  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.escape) {
      onOpenSettings();
      return true;
    }
    return false;
  }
}
