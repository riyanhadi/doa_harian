import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';
import '../view/doa_view.dart';

class DoaController extends State<DoaView> {
  static late DoaController instance;
  late DoaView view;

  @override
  void initState() {
    super.initState();
    initData();
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

  bool loading = true;
  List<dynamic> listDoa = [];
  List<dynamic> filteredDoa = [];

  initData() async {
    await Future.wait([
      getDoa(),
    ]);

    setState(() {});
  }

  Future getDoa() async {
    loading = true;
    var response = await Dio().get(
      "https://riyanhadi.my.id/doa/api",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    listDoa = response.data;
    updateFilteredDoa("");
    loading = false;
  }

  updateFilteredDoa(String searchText) {
    filteredDoa = listDoa.where((item) {
      String doaText = item["doa"].toString().toLowerCase();
      return doaText.contains(searchText.toLowerCase());
    }).toList();

    setState(() {});
  }

  Future<void> refresh() async {
    loading = true;
    setState(() {});
    await getDoa();
    loading = false;
    setState(() {});
  }
}
