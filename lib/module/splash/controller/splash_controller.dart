import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';

class SplashController extends State<SplashView> {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;
    initData();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  initData() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(const DoaView());
    });
  }
}
