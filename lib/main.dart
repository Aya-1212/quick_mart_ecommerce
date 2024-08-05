import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quick_mart_ecommerce/core/services/app_local_storage.dart';
import 'package:quick_mart_ecommerce/core/theme/app_theme.dart';
import 'package:quick_mart_ecommerce/fearures/introduction/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('user');
  AppLocalStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        builder: (context, child) => ValueListenableBuilder(
              valueListenable: Hive.box("user").listenable(),
              builder: (context, value, child) {
                bool isDark = value.get("isDark",defaultValue: false);
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  home: const SplashView(),
                );
              },
            ));
  }
}
