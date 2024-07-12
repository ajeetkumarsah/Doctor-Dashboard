import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widgets/pagination.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/single_select_mini.dart';
import 'package:doctor_dashboard/pages/city/components/count_info.dart';
import 'package:doctor_dashboard/widgets/single_select_mini_doctor.dart';
import 'package:doctor_dashboard/pages/search/components/patient_card.dart';

class SearchPatientsView extends StatefulWidget {
  const SearchPatientsView({super.key});

  @override
  State<SearchPatientsView> createState() => _SearchPatientsViewState();
}

class _SearchPatientsViewState extends State<SearchPatientsView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selected = 0;

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
                            Text(
                              "Search Patients",
                              style: CustomFonts.poppins20W600(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: HexColor("#FFF7E9"),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    hintText: "Search",
                                    hintStyle: CustomFonts.poppins14W500(
                                        color: HexColor("#6A5633")),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: SingleSelectMini(items: [
                                        "Default",
                                        "Today",
                                        "Yesterday",
                                        "Last Week",
                                        "Last Month",
                                        "3 Months",
                                        "6 Months",
                                        "1 Year",
                                        "All Time"
                                      ], label: "Date")),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                          child: SingleSelectMini(
                                              dropdownWidth: 200,
                                              items: [
                                                "All Brands",
                                                "Orange Brand Dental",
                                                "Orange Brand Orthopedics",
                                                "Orange Brand Homeopathy",
                                                "Precilo Brand Dental",
                                                "Precilo Brand Orthopedics1",
                                                "Precilo Brand Orthopedics2",
                                                "Precilo Brand Orthopedics3"
                                              ],
                                              label: "Brand")),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                          child: SingleSelectMiniDoctor(
                                              items: [], label: "Doctor")),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                          child: SingleSelectMini(
                                              dropdownWidth: 160,
                                              items: [
                                                'Default',
                                                'Bangalore',
                                                'Mumbai',
                                                'Hyderabad',
                                                'Pune',
                                                'Delhi',
                                                'NCR',
                                                'Kolkata',
                                                'Chennai'
                                              ],
                                              label: "City"))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    flex: 2,
                                    child: SingleSelectMini(
                                      items: [],
                                      label: "Enter",
                                      invert: true,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            const CountInfo(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      "Patients \nList",
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
                                      PatientCard(index: index),
                                  ],
                                ),
                              ),
                            )
                          ]))))
        ]));
  }
}
