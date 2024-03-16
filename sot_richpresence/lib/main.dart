import 'package:dart_discord_rpc/dart_discord_rpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:sot_richpresence/pages/activities/choose_activity.dart';
import 'package:sot_richpresence/pages/activities/choose_activity_company.dart';
import 'package:sot_richpresence/pages/home/home_page.dart';
import 'package:sot_richpresence/pages/loading/loading_page.dart';
import 'package:sot_richpresence/pages/ships/choose_ship.dart';
import 'package:sot_richpresence/pages/ships/choose_ship_players.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DiscordRPC.initialize();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('fr')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Sea of thieves RPC',
      themeMode: ThemeMode.dark,
      darkTheme: FluentThemeData(
        fontFamily: 'Windlass',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/home': (context) => HomePage(),
        '/choose_ship': (context) => ChooseShip(),
        '/choose_ship_players': (context) => ChooseShipPlayerRoute(),
        '/choose_activity_company': (context) => ChooseActivityCompanyPage(),
        '/choose_activity': (context) => ChooseActivityRoute(),
      },
    );
  }
}
