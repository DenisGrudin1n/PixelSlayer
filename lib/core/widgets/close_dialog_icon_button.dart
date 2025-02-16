import 'package:flutter/material.dart';

class CloseDialogIconButton extends StatelessWidget {
  const CloseDialogIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.close,
        size: 28,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
