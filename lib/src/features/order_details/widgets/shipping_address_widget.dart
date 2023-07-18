import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ShippingAddressWidget extends StatefulWidget {
  const ShippingAddressWidget({
    super.key,
    required this.address,
    required this.flat,
    required this.floor,
    required this.notes,
    required this.locationHome,
  });
  final String? address;
  final String? flat;
  final String? floor;
  final String? notes;
  final String? locationHome;

  @override
  State<ShippingAddressWidget> createState() => _ShippingAddressWidgetState();
}

class _ShippingAddressWidgetState extends State<ShippingAddressWidget> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.66,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(title: '${l10n.shippingAddress}'),
                16.verticalSpace,
                Text(
                  '${l10n.at} ${widget.locationHome ?? '${l10n.home}'}',
                  style: AppStyles.content15pxRegular,
                ),
                10.verticalSpace,
                Text(
                  '${widget.address}',
                  style: AppStyles.content15pxRegular,
                ),
                10.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.flat != null
                        ? Text(
                            '${l10n.flat}: ${widget.flat}',
                            style: AppStyles.content15pxRegular,
                          )
                        : const SizedBox(),
                    widget.floor != null
                        ? Text(
                            '${l10n.floor}: ${widget.floor}',
                            style: AppStyles.content15pxRegular,
                          )
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              setState(() {
                loading = true;
              });
              final url =
                  'https://www.google.com/maps/search/${Uri.encodeFull(widget.address!)}';
              final u = Uri.parse(url);

              if (await canLaunchUrl(u)) {
                setState(() {
                  loading = false;
                });
                await launchUrl(u);
              } else {
                setState(() {
                  loading = false;
                });
                throw 'Could not launch $url';
              }
            },
            child: loading
                ? const LoadingProgrss()
                : Row(
                    children: [
                      Text(
                        '${l10n.directions}',
                        style: AppStyles.babyBlue14pxMedium,
                      ),
                      6.horizontalSpace,
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppColors.babyBlueColor,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
