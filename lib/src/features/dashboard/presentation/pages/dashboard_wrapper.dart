import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';

class DashboardWrapperPage extends StatelessWidget {
  const DashboardWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return const AutoRouter();
  }
}
