import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';


class CustomButton extends StatelessWidget {
  /// [title] argument is required
  const CustomButton({
    Key? key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = AppColors.primaryColor,
    this.shape,
    this.width = 190,
    this.height = 48,
    this.loading = false,
    this.isDisabled = true,
    this.icon,
    this.elevation = 0,
    this.gap = 17,
    this.splashColor,
  }) : super(key: key);

  final String? title;
  final Widget? icon;

  final double gap;

  final double elevation;

  final VoidCallback? onPressed;

  /// [titleStyle] is used to style the button text
  final TextStyle? titleStyle;

  /// [gradient] for enabled state of button
  final Color backgroundColor;

  /// [shape] is used to apply border radius on button,
  final ShapeBorder? shape;

  /// [width] button width, defaults is 140
  final double width;

  /// [height] button height, defaults is 44
  final double height;

  /// [loading] is used to display circular progress indicator on loading event, default is false
  final bool loading;

  /// [isDisabled] is used to disable to button, default is true
  final bool isDisabled;

  final Color? splashColor;

  ShapeBorder get _shape =>
      shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r));

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  Color get _splashColor => splashColor != null
      ? splashColor!
      : ((backgroundColor == AppColors.whiteColor ||
              backgroundColor == Colors.transparent)
          ? AppColors.blackColor.withOpacity(0.4)
          : AppColors.whiteColor.withOpacity(0.4));

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      color: isDisabled ? AppColors.greyColor : backgroundColor,
      shape: _shape,
      elevation: elevation,
      shadowColor: AppColors.blackColor,
      child: InkWell(
        splashColor: _splashColor,
        onTap: isDisabled || loading ? null : onPressed,
        child: ConstrainedBox(
          constraints: _constraints,
          child: Ink(
            decoration: ShapeDecoration(
              shape: _shape,
              color: isDisabled ? AppColors.greyColor : backgroundColor,
            ),
            child: loading
                ? Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: backgroundColor == AppColors.whiteColor ||
                                backgroundColor == AppColors.transparent
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        icon!,
                        if (title != null) gap.horizontalSpace,
                      ],
                      if (title != null)
                        Text(
                          title!,
                          style: titleStyle,
                        ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
