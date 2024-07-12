import 'package:flutter/material.dart';
import '../../widgets/pagination.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/registered_doctor/components/list_card.dart';

class RegisteredDoctorsListView extends StatefulWidget {
  const RegisteredDoctorsListView({super.key});

  @override
  State<RegisteredDoctorsListView> createState() =>
      _RegisteredDoctorsListViewState();
}

class _RegisteredDoctorsListViewState extends State<RegisteredDoctorsListView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 1;

  callback(page) {
    setState(() {
      currentPage = page;
    });
  }

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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      "Registered \nDoctor’s List",
                                      style: CustomFonts.poppins20W600(),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 3),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: HexColor("#2A2C41")),
                                            child: Text(
                                              "Refresh",
                                              style: CustomFonts.poppins10W700(
                                                  color: HexColor("#FF724C")),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Pagination(
                                            pagesLenght: 10,
                                            currentPage: currentPage,
                                            callback: callback,
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    color: HexColor("#FFF7E9"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  children: [
                                    for (int index = 0; index < 5; index++)
                                      ListCard(index: index),
                                  ],
                                ),
                              ),
                            ),
                          ]))))
        ]));
  }
}
