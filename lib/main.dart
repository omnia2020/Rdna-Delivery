import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:rdna_delivery/app/app.dart';
import 'package:rdna_delivery/firebase.dart';

import 'src/core/routes/app_route.gr.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  GetIt.instance.registerSingleton<AppRouter>(AppRouter());
  WidgetsFlutterBinding.ensureInitialized();
  await firebase.init();
  runApp(App());
}
