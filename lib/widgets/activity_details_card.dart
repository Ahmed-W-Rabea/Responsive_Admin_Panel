import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/data/health_details.dart';
import 'package:responsive_admin_panel/util/responsive.dart';
import 'package:responsive_admin_panel/widgets/custom_card.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const  ScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:Responsive.isMobile(context)?2: 4, crossAxisSpacing:Responsive.isMobile(context)?12: 15, mainAxisSpacing: 12),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(healthDetails.healthData[index].title,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
