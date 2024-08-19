import 'package:flutter/material.dart';
import 'package:doa_harian/core.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DoaView extends StatefulWidget {
  const DoaView({super.key});

  Widget build(context, DoaController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Do'a Harian",
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Doa',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: Colors.grey[300]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: secondaryColor,
                            width: 2,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: secondaryColor,
                        ),
                      ),
                      onChanged: (value) {
                        controller.updateFilteredDoa(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: controller.refresh,
                      child: controller.loading
                          ? ListView.builder(
                              itemCount: 3,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 50.0,
                                  margin: const EdgeInsets.only(
                                    bottom: 10.0,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffdfdddf),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        8.0,
                                      ),
                                    ),
                                  ),
                                )
                                    .animate(
                                      onPlay: (controller) =>
                                          controller.repeat(),
                                    )
                                    .shimmer(
                                        duration: Duration(
                                            milliseconds:
                                                (index * 100) + 1000));
                              },
                            )
                          : ListView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              itemCount: controller.filteredDoa.length,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var item = controller.filteredDoa[index];
                                return InkWell(
                                  onTap: () {
                                    Get.to(DetailDoaView(
                                      item: item,
                                    ));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(
                                      bottom: 10.0,
                                    ),
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      // color: const Color(0xffF1F6F5)
                                      //     .withOpacity(0.7),
                                      color: primaryColor.withOpacity(0.09),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        width: 1.5,
                                        color: primaryColor,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/icons/nomor.png",
                                              width: 35.0,
                                              height: 35.0,
                                              fit: BoxFit.fill,
                                            ),
                                            Text(
                                              item["id"],
                                              style: const TextStyle(
                                                color: Color(0xff735d2e),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(item["doa"]),
                                      ],
                                    ),
                                  ).animate().fadeIn(
                                      delay:
                                          Duration(milliseconds: index * 50)),
                                );
                              },
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DoaView> createState() => DoaController();
}
