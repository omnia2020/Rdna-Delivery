import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class CloseAlertDialog extends StatelessWidget {
  const CloseAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(
        l10n.alert,
        style: AppStyles.yellow16pxMedium,
      ),
      content: Text(
        l10n.doYouWantToExitTheApp,
        style: AppStyles.content16pxMedium,
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              l10n.no,
              style: AppStyles.yellow16pxMedium,
            )),
        TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: Text(
              l10n.yes,
              style: AppStyles.yellow16pxMedium,
            )),
      ],
    );
  }
}
