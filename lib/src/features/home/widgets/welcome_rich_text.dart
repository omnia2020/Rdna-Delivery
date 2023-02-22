import 'package:flutter/material.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';


class WelcomeRichText extends StatelessWidget {
  const WelcomeRichText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: '${l10n.hello}, ', style: AppStyles.darkGrey16pxRegular),
          TextSpan(text: '$text', style: AppStyles.black16Bold),
        ],
      ),
    );
  }
}
