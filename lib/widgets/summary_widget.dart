import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/widgets/pie_chart_widget.dart';
import 'package:responsive_admin_panel/widgets/scheduled.dart';
import 'package:responsive_admin_panel/widgets/summary_details.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF171821),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Chart(),
          Text(
            "Summary",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SummaryDetails(),
          ),
          SizedBox(
            height: 40,
          ),
          Scheduled(),
        ],
      ),
    );
  }
}
