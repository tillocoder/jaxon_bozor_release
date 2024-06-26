import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'chart.dart';
import 'indicator.dart';

class YillikChart extends StatefulWidget {
  const YillikChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<YillikChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Row(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 50,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: AppColors.contentColorBlue,
                text: 'Yanvar',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorYellow,
                text: 'Fevral',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorPurple,
                text: 'Mart',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.contentColorGreen,
                text: 'Aprel',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorRed,
                text: 'May',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorOrange,
                text: 'Iyun',
                isSquare: true,
              ),
              Indicator(
                color: Colors.amber,
                text: 'Iyul',
                isSquare: true,
              ),
              Indicator(
                color: Colors.green,
                text: 'Avgust',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorCyan,
                text: 'Sentyabr',
                isSquare: true,
              ),
              Indicator(
                color: Colors.white54,
                text: 'Oktyabr',
                isSquare: true,
              ),
              Indicator(
                color: AppColors.contentColorPink,
                text: 'Noyabr',
                isSquare: true,
              ),
              Indicator(
                color: Colors.orange,
                text: 'Dekabr',
                isSquare: true,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      12,
      (i) {
        final isTouched = i == touchedIndex;
        const fontSize = 10.0;
        final radius = isTouched ? 60.0 : 50.0;
        const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: AppColors.contentColorBlue,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 1:
            return PieChartSectionData(
              color: AppColors.contentColorYellow,
              value: 13,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 2:
            return PieChartSectionData(
              color: AppColors.contentColorPurple,
              value: 20,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 3:
            return PieChartSectionData(
              color: AppColors.contentColorGreen,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 4:
            return PieChartSectionData(
              color: AppColors.contentColorRed,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 5:
            return PieChartSectionData(
              color: AppColors.contentColorOrange,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 6:
            return PieChartSectionData(
              color: Colors.orangeAccent,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 7:
            return PieChartSectionData(
              color: Colors.purple,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 8:
            return PieChartSectionData(
              color: AppColors.contentColorCyan,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 9:
            return PieChartSectionData(
              color: Colors.blueAccent,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 10:
            return PieChartSectionData(
              color: AppColors.contentColorPink,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 11:
            return PieChartSectionData(
              color: Colors.teal,
              value: 8.3,
              title: '8.3%',
              radius: radius,
              titleStyle: const TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          default:
            throw Error();
        }
      },
    );
  }
}
