import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    required this.openSettingsDialog,
    super.key,
  });
  final void Function() openSettingsDialog;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColorLight,
      onPressed: openSettingsDialog,
      child: Icon(
        Icons.settings,
        color: Theme.of(context).primaryColorDark,
      ),
    );
  }
}
