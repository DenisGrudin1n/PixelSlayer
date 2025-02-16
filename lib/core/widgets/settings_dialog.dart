import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pixel_slayer/core/theme/text_styles.dart';
import 'package:pixel_slayer/core/widgets/close_dialog_icon_button.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColorLight,
      title: Row(
        children: [
          Text(
            'settings'.tr(),
            style: TextStyles.title.copyWith(
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          const Spacer(),
          const CloseDialogIconButton(),
        ],
      ),
      // Choose language
      content: Column(
        children: [
          Text(
            'language'.tr(),
            style: TextStyles.category.copyWith(
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              context.setLocale(const Locale('en'));
            },
            child: Text(
              'English',
              style: TextStyles.text.copyWith(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.setLocale(const Locale('uk'));
            },
            child: Text(
              'Українська',
              style: TextStyles.text.copyWith(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
