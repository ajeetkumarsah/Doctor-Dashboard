import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_drawer.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/patients/components/info_card.dart';
import 'package:doctor_dashboard/pages/patients/components/consultation_form.dart';
import 'package:doctor_dashboard/pages/patients/components/consultation_graph.dart';

class ConsultationInfoView extends StatefulWidget {
  const ConsultationInfoView({super.key});

  @override
  State<ConsultationInfoView> createState() => _ConsultationInfoViewState();
}

class _ConsultationInfoViewState extends State<ConsultationInfoView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: CustomDrawer(
          scaffoldKey: scaffoldKey,
        ),
        backgroundColor: HexColor("#FF724C"),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Consultation Info",
                    style: CustomFonts.poppins20W600(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const InfoCard(),
                const SizedBox(
                  height: 12,
                ),
                const ConsultationGraph(),
                const SizedBox(
                  height: 12,
                ),
                const ConsultationForm()
              ])))
        ]));
  }
}
