import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';
import '../view/detail_doa_view.dart';

class DetailDoaController extends State<DetailDoaView> {
  static late DetailDoaController instance;
  late DetailDoaView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
