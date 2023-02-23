import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransparentAppBar(
      {Key? key,
      this.title,
      this.systemOverlayStyle,
      this.centerTitle = false,
      this.backButton,
      this.actions,
      this.color,
      this.elevation,
      this.bottom})
      : super(key: key);
  final Widget? title;
  final bool centerTitle;
  final Widget? backButton;
  final Widget? actions;
  final Widget? bottom;
  final Color? color;
  final double? elevation;
  final SystemUiOverlayStyle? systemOverlayStyle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: systemOverlayStyle,
      leading: backButton ??
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: AppColors.blackColor,
            onPressed: () {
              context.router.pop();
            },
          ),
      backgroundColor: color ?? Colors.transparent,
      title: title ?? Container(),
      elevation: elevation ?? 0,
      centerTitle: centerTitle,
      bottom: PreferredSize(
          preferredSize: preferredSize, child: bottom ?? Container()),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
