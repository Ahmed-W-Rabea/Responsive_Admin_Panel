import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/widgets/custom_card.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal" , "305"),
          buildDetails("Steps" , "23305"),
          buildDetails("Distance" , "10km"),
          buildDetails("Sleep" , "8hr"),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key, style: const TextStyle(fontSize: 11, color: Colors.grey  ,),

        ),
        const SizedBox(height: 2,),
        Text(value, style: const TextStyle(fontSize: 14),)
      ],
    );
  }
}
