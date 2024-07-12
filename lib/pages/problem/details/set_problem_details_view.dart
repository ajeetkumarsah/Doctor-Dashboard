import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/problem/components/problems_list.dart';
import 'package:doctor_dashboard/pages/problem/components/details_tabbar.dart';

class SetProblemDetailsView extends StatefulWidget {
  const SetProblemDetailsView({super.key});

  @override
  State<SetProblemDetailsView> createState() => _SetProblemDetailsViewState();
}

class _SetProblemDetailsViewState extends State<SetProblemDetailsView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: HexColor("#FF724C"),
        endDrawer: CustomDrawer(
          scaffoldKey: scaffoldKey,
        ),
        body: Column(children: [
          CustomAppbar(
            showback: true,
            scaffoldKey: scaffoldKey,
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/doctor_face.png",
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Ashley Martin ( ID : ASO1235SX )",
                      style: CustomFonts.poppins10W600(color: Colors.white),
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: HexColor("#FF724C"),
                        size: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "ashley123@gmail.com",
                        textAlign: TextAlign.center,
                        style: CustomFonts.poppins8W600(
                            color: HexColor("#222425")),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.phone,
                        color: HexColor("#FF724C"),
                        size: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "+91 9087654321",
                        textAlign: TextAlign.center,
                        style: CustomFonts.poppins8W600(
                            color: HexColor("#222425")),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/star.png",
                        width: 16, height: 16),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Precilo Dental",
                      style: CustomFonts.poppins10W600(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DetailsTabBar(),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Set",
                                      style: CustomFonts.poppins12W700(
                                          color: HexColor("#222425")),
                                    ),
                                    Text(
                                      "Problems",
                                      style: CustomFonts.poppins20W700(
                                          color: HexColor("#222425")),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    HexColor("#222425").withOpacity(0.1),
                                child: Icon(
                                  Icons.edit,
                                  color: HexColor("#222425"),
                                  size: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 112,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: HexColor("#222425")),
                                child: Center(
                                  child: Text(
                                    "ADD NEW",
                                    style: CustomFonts.poppins16W700(
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: ProblemsList(),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 60,
                          width: 172,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: HexColor("#222425")),
                          child: Center(
                            child: Text(
                              "DONE",
                              style: CustomFonts.poppins20W700(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]))
        ]));
  }
}
