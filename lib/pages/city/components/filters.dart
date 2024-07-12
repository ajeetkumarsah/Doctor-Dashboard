import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:doctor_dashboard/utils/app_text_style.dart';
import 'package:doctor_dashboard/widgets/single_select_appointment.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      "View Doctor",
      "View Appointment",
      "View Doctor",
      "View Appointment"
    ];

    var appointments = [
      "Default",
      "Today",
      "Yesterday",
      "Last Week",
      "Last Month",
      "3 Months",
      "6 Months",
      "1 Year",
      "All Time"
    ];

    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 15, childAspectRatio: 0.8),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (_, idx) {
          if (items[idx] == 'View Appointment') {
            return SingleSelectAppointment(
                items: appointments, label: items[idx]);
          }
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: HexColor("#2A2C41"),
                borderRadius: BorderRadius.circular(20)),
            child: Text(items[idx],
                textAlign: TextAlign.center,
                style: CustomFonts.poppins8W600(color: Colors.white)),
          );
        });
  }
}
