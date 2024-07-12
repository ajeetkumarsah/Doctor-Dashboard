import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/problem/components/options.dart';

class SetProblemView extends StatefulWidget {
  const SetProblemView({super.key});

  @override
  State<SetProblemView> createState() => _SetProblemViewState();
}

class _SetProblemViewState extends State<SetProblemView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: CustomDrawer(
          scaffoldKey: scaffoldKey,
        ),
        body: Column(children: [
          CustomAppbar(
            showback: true,
            scaffoldKey: scaffoldKey,
            title: Column(
              children: [
                Text(
                  "ASO1235SX : Ashley Martin",
                  style: CustomFonts.poppins13W600(color: Colors.white),
                ),
                Text(
                  "+91 9087654321 : ashley123@gmail.com",
                  textAlign: TextAlign.center,
                  style: CustomFonts.poppins13W600(color: Colors.white),
                ),
                Text(
                  "Precilo Dental",
                  style: CustomFonts.poppins13W600(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/pattern.png"),
                                      fit: BoxFit.fill)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 7,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Booking Message",
                                                style:
                                                    CustomFonts.poppins13W700(
                                                        color: HexColor(
                                                            "#2A2C41")),
                                              ),
                                              Icon(
                                                  Icons
                                                      .keyboard_arrow_down_outlined,
                                                  size: 20,
                                                  color: HexColor("#2A2C41"))
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 0,
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 34,
                                                decoration: BoxDecoration(
                                                    color: HexColor("#FF724C"),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: Center(
                                                  child: Text(
                                                    "Make Live",
                                                    style: CustomFonts
                                                        .poppins10W600(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 34,
                                                decoration: BoxDecoration(
                                                    color: HexColor("#FF724C"),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: Center(
                                                  child: Text(
                                                    "Make Live",
                                                    style: CustomFonts
                                                        .poppins10W600(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 128,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    margin: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: TextField(
                                        maxLines: 5,
                                        maxLength: 100,
                                        controller: TextEditingController(
                                            text:
                                                "Treatment starting at as low as 2oo Rs. per session."),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 16),
                                          counterStyle:
                                              CustomFonts.poppins8W600(
                                                  color: HexColor("#FF724C")),
                                          hintText: "Doctor Name",
                                          hintStyle: CustomFonts.poppins14W500(
                                              color: HexColor("#222425")),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, bottom: 16),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: HexColor("#2A2C41"),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              "Update",
                                              style: CustomFonts.poppins8W600(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: HexColor("#2A2C41"),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              "Save",
                                              style: CustomFonts.poppins8W600(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: HexColor("#2A2C41"),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              "Undo",
                                              style: CustomFonts.poppins8W600(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: HexColor("#FFF7E9"),
                                  borderRadius: BorderRadius.circular(30)),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 20,
                                          color: HexColor("#2A2C41"))),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Options(
                                    selected: selected,
                                    onClick: (idx) {
                                      setState(() {
                                        selected = idx;
                                      });
                                    },
                                  )
                                ],
                              ),
                            )
                          ]))))
        ]));
  }
}
