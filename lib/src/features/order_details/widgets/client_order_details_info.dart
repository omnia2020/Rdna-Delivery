import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/authentication/login/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ClientOrderDetailsInfo extends StatefulWidget {
  const ClientOrderDetailsInfo({
    super.key,
    required this.clientName,
    required this.note,
    required this.phone,
  });
  final String? clientName;
  final String? phone;
  final String? note;

  @override
  State<ClientOrderDetailsInfo> createState() => _ClientOrderDetailsInfoState();
}

class _ClientOrderDetailsInfoState extends State<ClientOrderDetailsInfo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(title: '${l10n.deliverTo}'),
          16.verticalSpace,
          Text(
            '${widget.clientName}',
            style: AppStyles.content15pxRegular,
          ),
          24.verticalSpace,
          TitleWidget(title: '${l10n.phoneNo}'),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget.phone}',
                style: AppStyles.content15pxRegular,
              ),
              SizedBox(
                width: 111.w,
                child: SocialButton(
                  btnColor: AppColors.greyColorF2,
                  onPressed: () {
                    _makePhoneCall(widget.phone!);
                  },
                  title: l10n.fastCall,
                  titleStyle: AppStyles.black14Regular,
                  icon: AssetsHelper.callIcon,
                ),
              ),
            ],
          ),
          widget.note != '' ? 24.verticalSpace : 0.verticalSpace,
          widget.note != ''
              ? TitleWidget(title: '${l10n.note}')
              : const SizedBox(),
          widget.note != '' ? 16.verticalSpace : 0.verticalSpace,
          Text(
            '${widget.note}',
            style: AppStyles.content15pxRegular,
          ),
          16.verticalSpace,
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
