import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:sot_richpresence/pages/loading/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Sea of thieves RPC',
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
      },
    );
  }
}