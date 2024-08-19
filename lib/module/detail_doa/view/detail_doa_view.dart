import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DetailDoaView extends StatefulWidget {
  final Map item;
  const DetailDoaView({
    super.key,
    required this.item,
  });

  Widget build(context, DetailDoaController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Container(
            width: 54.0,
            height: 54.0,
            decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey[700],
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        controller.widget.item["doa"],
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate().fadeIn(
                            delay: const Duration(milliseconds: 100),
                          ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        border: Border.all(
                          width: 1.5,
                          color: primaryColor,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            15.0,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          textAlign: TextAlign.right,
                          controller.widget.item["ayat"],
                          style: TextStyle(
                            fontSize: 24,
                            color: textColor,
                          ),
                        ),
                      ),
                    ).animate().slideX(
                          delay: const Duration(milliseconds: 200),
                        ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      "Latin :",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ).animate().fadeIn(
                          delay: const Duration(milliseconds: 300),
                        ),
                    Text(controller.widget.item["latin"]).animate().fadeIn(
                          delay: const Duration(milliseconds: 400),
                        ),
                    const SizedBox(
                      height: 15.0,
                    ).animate().fadeIn(
                          delay: const Duration(milliseconds: 500),
                        ),
                    const Text(
                      "Artinya :",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ).animate().fadeIn(
                          delay: const Duration(milliseconds: 600),
                        ),
                    Text(controller.widget.item["artinya"]).animate().fadeIn(
                          delay: const Duration(milliseconds: 700),
                        ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailDoaView> createState() => DetailDoaController();
}
