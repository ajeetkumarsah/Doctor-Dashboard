import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/pages/patients/components/problems_sheet.dart';

class ConsultationForm extends StatelessWidget {
  const ConsultationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "More",
            style: CustomFonts.poppins16W600(),
          ),
          Text(
            "Details",
            style: CustomFonts.poppins32W800(),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: HexColor("#FFF7E9"),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText: "27 Feb, Tuesday",
                hintStyle:
                    CustomFonts.poppins14W500(color: HexColor("#222425")),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: HexColor("#FFF7E9"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      hintText: "10:00 AM",
                      hintStyle:
                          CustomFonts.poppins14W500(color: HexColor("#222425")),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: HexColor("#FFF7E9"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      hintText: "Clinic Visit",
                      hintStyle:
                          CustomFonts.poppins14W500(color: HexColor("#222425")),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (_) {
                    return ProblemsSheet(
                      onChanged: (e) {},
                    );
                  });
            },
            child: AbsorbPointer(
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: HexColor("#FFF7E9"),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    hintText: "Dental Braces",
                    hintStyle:
                        CustomFonts.poppins14W500(color: HexColor("#222425")),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: HexColor("#FFF7E9"),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText: "None",
                hintStyle:
                    CustomFonts.poppins14W500(color: HexColor("#222425")),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: HexColor("#FFF7E9"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      hintText: "None",
                      hintStyle:
                          CustomFonts.poppins14W500(color: HexColor("#222425")),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: HexColor("#FFF7E9"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      hintText: "Chloraseptic",
                      hintStyle:
                          CustomFonts.poppins14W500(color: HexColor("#222425")),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 148,
            decoration: BoxDecoration(
              color: HexColor("#FFF7E9"),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                hintText:
                    "Jorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.",
                hintStyle: CustomFonts.poppins12W500(
                    color: HexColor("#222425").withOpacity(0.5)),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: HexColor("#222425")),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text("Sms Sent",
                        style: CustomFonts.poppins10W700(color: Colors.white))
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                height: 40,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: HexColor("#222425")),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text("Email Sent",
                        style: CustomFonts.poppins10W700(color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Amount Paid",
                      style: CustomFonts.poppins12W700(
                          color: HexColor("#201A3F").withOpacity(0.5))),
                  Text("Rs. 3000",
                      style:
                          CustomFonts.poppins24W800(color: HexColor("#222425")))
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: HexColor("#FF724C")),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: HexColor("#222425"),
                          size: 18,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("New Consultation",
                              style: CustomFonts.poppins12W800(
                                  color: HexColor("#FFFFFF"))),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
