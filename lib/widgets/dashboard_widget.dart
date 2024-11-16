import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/widgets/activity_details_card.dart';
import 'package:responsive_admin_panel/widgets/bar_graph_card.dart';
import 'package:responsive_admin_panel/widgets/header_widget.dart';
import 'package:responsive_admin_panel/widgets/line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 18),
            HeaderWidget(),
            SizedBox(height: 18),
            ActivityDetailsCard(),
            SizedBox(height: 18),
            LineChartCard(),
            SizedBox(
              height: 18,
            ),
            BarGraphCard(),
          ],
        ),
      ),
    );
  }
}
