import 'package:doa_harian/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool ready = false;

  @override
  void initState() {
    initData();
    super.initState();
  }

  initData() async {
    ready = true;
    setState(() {});
  }

  Widget get mainView {
    if (!ready) return Container();

    return const SplashView();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      home: mainView,
    );
  }
}
