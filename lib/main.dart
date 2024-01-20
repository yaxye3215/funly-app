import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/src/view/auth/welcome_screen.dart';

import 'package:funly/src/view/navbar_screen.dart';
import 'package:funly/utils/preferences/preferences.dart';
import 'package:get/route_manager.dart';

Widget defualt = const WelcomeScreen();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.init();
  final token = PreferenceUtils.getString("token");

  if (token.isNotEmpty) {
    defualt = const NavbarScreen();
  } else {
    defualt = const WelcomeScreen();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Funly App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: defualt,
    );
  }
}
