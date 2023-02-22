import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class StatusCardColor extends StatefulWidget {
  const StatusCardColor({
    super.key,
    required this.borderColor,
    required this.color,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Color color;
  final Color borderColor;
  final Function() onTap;

  @override
  State<StatusCardColor> createState() => _StatusCardColorState();
}

class _StatusCardColorState extends State<StatusCardColor> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      contentPadding: EdgeInsets.zero,
      dense: true,
      horizontalTitleGap: 20.w,
      minLeadingWidth: 20.w,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      leading: Container(
        width: 16.w,
        height: 16.w,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: widget.borderColor,
          ),
        ),
      ),
      title: Text(
        widget.text,
        style: AppStyles.title14Medium,
      ),
    );
  }
}
