import 'package:flutter/material.dart';
import '../../widgets/pagination.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/single_select.dart';
import 'package:doctor_dashboard/widgets/single_select2.dart';
import 'package:doctor_dashboard/widgets/single_select_filter.dart';
import '../invitation/invitation_link/add_invitation_link_view.dart';
import 'package:doctor_dashboard/pages/send_invititaion/components/invitation_card.dart';

class SendInvitation extends StatefulWidget {
  const SendInvitation({Key? key}) : super(key: key);

  @override
  State<SendInvitation> createState() => _SendInvitationState();
}

class _SendInvitationState extends State<SendInvitation> {
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
        body: Column(
          children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send Invitation",
                            style: CustomFonts.poppins20W600(),
                          ),
                          InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddInvitationLinkView()))
                            },
                            child: Container(
                              height: 32,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: HexColor("#FF724C"),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  'Add Invitation Link',
                                  style: CustomFonts.poppins10W600(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: HexColor("#FFE8BF"),
                        ),
                        child: Column(
                          children: [
                            const SingleSelect(label: "Brand", items: [
                              'Default',
                              'Orange Brand',
                              'Precilo',
                              'Nutrelis'
                            ]),
                            const SizedBox(
                              height: 16,
                            ),
                            const SingleSelect(label: "Specialization", items: [
                              'Default',
                              'Dental',
                              'Homeopathy',
                              'Orthopedics'
                            ]),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 16),
                                        hintText: "Doctor Name",
                                        hintStyle: CustomFonts.poppins14W500(
                                            color: HexColor("#222425")),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Image.asset(
                                        "assets/images/edit.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "Email ID",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "Phone Number",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16),
                                      hintText: "City",
                                      hintStyle: CustomFonts.poppins14W500(
                                          color: HexColor("#222425")),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 37,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: HexColor("#FF724C"),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Send Invitation',
                                    style: CustomFonts.poppins14W700(
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 140,
                            child: SingleSelect2(items: [
                              "All Brands",
                              "Orange Brand Dental",
                              "Orange Brand Orthopedics",
                              "Orange Brand Homeopathy",
                              "Precilo Brand Dental",
                              "Precilo Brand Orthopedics1",
                              "Precilo Brand Orthopedics2",
                              "Precilo Brand Orthopedics3"
                            ], label: 'All Brands'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SingleSelectFilter()
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Doctor’s\nInvitation List (124)",
                                style: CustomFonts.poppins20W600(),
                              ),
                            ),
                            Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                InvitationCard(index: index),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
