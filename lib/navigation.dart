import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/apk/send/send_apk_view.dart';
import 'package:doctor_dashboard/pages/admin_login/admin_login.dart';
import 'package:doctor_dashboard/pages/problem/set_problem_view.dart';
import 'package:doctor_dashboard/pages/city/create/add_city_view.dart';
import 'package:doctor_dashboard/pages/apk/resend/resend_apk_view.dart';
import 'package:doctor_dashboard/pages/doctor_details/doctor_details.dart';
import 'package:doctor_dashboard/pages/sub_admin_list/sub_admin_list.dart';
import 'package:doctor_dashboard/pages/problem/icons/problem_icons_view.dart';
import 'package:doctor_dashboard/pages/create_sub_admin/create_sub_admin.dart';
import 'package:doctor_dashboard/pages/schedule/create/set_schedule_view.dart';
import 'package:doctor_dashboard/pages/send_invititaion/send_invititaion.dart';
import 'package:doctor_dashboard/pages/registered_doctor/registered_doctor.dart';
import 'package:doctor_dashboard/pages/resend_invitation/resend_invitation.dart';
import 'package:doctor_dashboard/pages/search/patients/search_patients_view.dart';
import 'package:doctor_dashboard/pages/patients/consultation/consultation_info.dart';
import 'package:doctor_dashboard/pages/problem/details/set_problem_details_view.dart';
import 'package:doctor_dashboard/pages/schedule/previous/previous_schedule_view.dart';
import 'package:doctor_dashboard/pages/schedule/upcoming/upcoming_schedule_view.dart';
import 'package:doctor_dashboard/pages/registered_doctor/resgistered_doctors_list_view.dart';
import 'package:doctor_dashboard/pages/registered_doctor_update/registered_doctor_update.dart';
import 'package:doctor_dashboard/pages/invitation/invitation_link/add_invitation_link_view.dart';

// ignore: must_be_immutable
class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);

  List popItems = [
    'Edit Profile',
    'Edit Problem',
    'Edit Time',
    'Freeze Account',
    'Delete Account'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProblemIconsView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Problem Icons")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConsultationInfoView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Consultation Info")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetScheduleView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Set Schedule")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PreviousSchedulesView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Previous Schedules")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpcomingSchedulesView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Upcoming Schedules")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCityView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Add City")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendApkView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Send APK")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResendApkView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Resend APK")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisteredDoctor())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Registered Doctor")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const RegisteredDoctorsListView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Registered Doctors List")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisteredDoctorUpdate())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Registered Doctor Update")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendInvitation())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Send Invitation")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddInvitationLinkView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Add Invitation Link")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResendInvitation())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Resend Invitation")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DoctorDetails())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Doctor Details")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetProblemView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Set Problem")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetProblemDetailsView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Set Problem Details")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchPatientsView())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Search Patients")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubAdminList())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Sub Admin List")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminLogin())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Admin Login")),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateSubAdmin())),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Craete Sub-Admin")),
                ),
              ),
              InkWell(
                onTap: () => popUp1(context, "Delete"),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Delete Popup")),
                ),
              ),
              InkWell(
                onTap: () => popUp1(context, "Update"),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Update Popup")),
                ),
              ),
              InkWell(
                onTap: () => popUp1(context, "Save"),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Save Popup")),
                ),
              ),
              InkWell(
                onTap: () => popUp1(context, "Add"),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Add Popup")),
                ),
              ),
              InkWell(
                onTap: () => popUp3(context),
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: const Text("Options Popup")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  popUp1(context, String type) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            content: StatefulBuilder(builder: (context, setState) {
              return SizedBox(
                height: 430,
                // width: MediaQuery.of(context).size.width * .8,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                            color: HexColor("#FFE8BF")),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(
                              "assets/images/popup/${type.toLowerCase()}.png"),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            color: HexColor("#FFFFFF")),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 14,
                            ),
                            Text(
                              "$type File",
                              style: CustomFonts.poppins24W700(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Are you sure you want to\n$type this file?",
                              textAlign: TextAlign.center,
                              style: CustomFonts.poppins12W500(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 52,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: HexColor("#FF724C"),
                                  ),
                                  child: Center(
                                    child: Text(
                                      type.toUpperCase(),
                                      style: CustomFonts.poppins16W600(
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    height: 52,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#2A2C41"),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "CANCEL",
                                        style: CustomFonts.poppins16W600(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        });
  }

  popUp3(context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            content: StatefulBuilder(builder: (context, setState) {
              return SizedBox(
                height: 380,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: HexColor("#FFE8BF")),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (int i = 0; i < popItems.length; i++)
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        popItems[i],
                                        style: CustomFonts.poppins24W600(
                                            color: HexColor("#222425")),
                                      ),
                                      if (i < popItems.length - 1)
                                        Divider(
                                          color: HexColor("#E7CD9E"),
                                          height: 30,
                                        )
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        });
  }

  popUp2(context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            content: StatefulBuilder(builder: (context, setState) {
              return SizedBox(
                height: 300,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: HexColor("#FFE8BF")),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < popItems.length; i++)
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popItems[i],
                                style: CustomFonts.poppins24W600(
                                    color: HexColor("#222425")),
                              ),
                              if (i < popItems.length - 1)
                                Divider(
                                  color: HexColor("#E7CD9E"),
                                )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              );
            }),
          );
        });
  }
}
