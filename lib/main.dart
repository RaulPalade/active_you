import 'package:active_you/navigation/modal_route.dart';
import 'package:active_you/pages/splash/splash_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => {initMain()};

Future<void> initMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final container = ProviderContainer();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: EasyLocalization(
        supportedLocales: const [
          Locale("en"),
        ],
        path: "assets/translations",
        fallbackLocale: const Locale("en"),
        child: const MaterialApp(
          home: MyApp(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: "Active You",
      theme: ActiveYouTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: modalRoute,
      home: const SplashPage(),
    );
  }
}
