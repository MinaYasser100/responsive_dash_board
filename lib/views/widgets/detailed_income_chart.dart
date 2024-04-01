import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int inActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          inActive =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: inActive == 0 ? 1.6 : null,
          radius: inActive == 0 ? 50 : 40,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: inActive == 0 ? null : Colors.white),
          title: inActive == 0 ? 'Design service' : '40%',
          value: 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          radius: inActive == 1 ? 50 : 40,
          titlePositionPercentageOffset: inActive == 1 ? 2.3 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: inActive == 1 ? null : Colors.white),
          title: inActive == 1 ? 'Design product' : '25%',
          value: 25,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          radius: inActive == 2 ? 50 : 40,
          titlePositionPercentageOffset: inActive == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: inActive == 2 ? null : Colors.white),
          title: inActive == 2 ? 'Product royalti' : '20%',
          value: 20,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          radius: inActive == 3 ? 50 : 40,
          titlePositionPercentageOffset: inActive == 3 ? 1.6 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: inActive == 3 ? null : Colors.white),
          title: inActive == 3 ? 'Other' : '22%',
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
