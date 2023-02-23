import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class ReportOrderPage extends StatelessWidget {
  const ReportOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      appBar: const TransparentAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.verticalSpace,
                Text(
                  '${l10n.issueWithTheOrder}',
                  style: AppStyles.title18Bold,
                ),
                24.verticalSpace,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.74,
                  child: Text('${l10n.pleaseTellUsMoreInfoAboutSituation}',
                      style: AppStyles.title16Regular),
                ),
                240.verticalSpace,
                CustomTextField(
                  keyboardType: TextInputType.text,
                  maxLines: 6,
                  label: l10n.whatIsHappened,
                  hint: l10n.tellUsYourSituation,
                ),
                32.verticalSpace,
                CustomButton(
                  isDisabled: false,
                  backgroundColor: AppColors.yellowColor,
                  title: l10n.submit,
                  titleStyle: AppStyles.title16Medium,
                  width: double.infinity,
                  onPressed: () {},
                ),
                12.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
