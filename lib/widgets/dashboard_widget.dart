import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/util/responsive.dart';
import 'package:responsive_admin_panel/widgets/activity_details_card.dart';
import 'package:responsive_admin_panel/widgets/bar_graph_card.dart';
import 'package:responsive_admin_panel/widgets/header_widget.dart';
import 'package:responsive_admin_panel/widgets/line_chart_card.dart';
import 'package:responsive_admin_panel/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(
              height: 18,
            ),
            const BarGraphCard(),
            const SizedBox(
              height: 18,
            ),
            if (Responsive.isTablet(context)) const SummaryWidget()
          ],
        ),
      ),
    );
  }
}
