import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';


class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.btnColor,
    required this.onPressed,
    required this.title,
    required this.titleStyle,
    required this.icon,
  });
  final String title;
  final TextStyle titleStyle;
  final Color btnColor;
  final Function() onPressed;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            offset: Offset(0, 8),
            color: AppColors.shadowColor,
          ),
        ],
      ),
      child: CustomButton(
        width: double.infinity,
        isDisabled: false,
        backgroundColor: btnColor,
        title: title,
        titleStyle: titleStyle,
        onPressed: onPressed,
        icon: icon != null ? SvgPicture.asset(icon!) : const SizedBox(),
      ),
    );
  }
}
